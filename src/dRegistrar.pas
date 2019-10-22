unit dRegistrar;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, uAtividade;

type
  TdmRegistrar = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;

  private
    procedure Enviar(project, issue: Integer; Horas: Currency; Atividade: TAtividades; Comentario: string;
      Data: TDateTime); overload;

  public
    procedure Enviar; overload;

  end;

var
  dmRegistrar: TdmRegistrar;

implementation

uses
  System.JSON, fHoras, dRegistros, dLembrete, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmRegistrar }


procedure TdmRegistrar.Enviar(project, issue: Integer; Horas: Currency; Atividade: TAtividades; Comentario: string;
  Data: TDateTime);
var
  JsonTime: TJSONObject;
  JsonTimeEntry: TJSONObject;
begin
  JsonTime := TJSONObject.Create;
  try
    JsonTimeEntry := TJSONObject.Create;
    if issue > 0 then
      JsonTimeEntry.AddPair(TJSONPair.Create('issue_id', TJSONNumber.Create(issue)))
    else if project > 0 then
      JsonTimeEntry.AddPair(TJSONPair.Create('project_id', TJSONNumber.Create(project)))
    else if StrToIntDef(FrmHoras.edtRedmineProjeto.ToString, 0) > 0 then
      JsonTimeEntry.AddPair(TJSONPair.Create('project_id', TJSONNumber.Create(FrmHoras.edtRedmineProjeto.EditValue)))
    else
      raise Exception.Create('Não é possível registrar horas sem chamado ou projeto!');

    if Atividade = Desconhecida then
      raise Exception.Create('Não é possível registrar horas sem atividade!');
    JsonTimeEntry.AddPair(TJSONPair.Create('activity_id', TJSONNumber.Create(Ord(Atividade))));

    JsonTimeEntry.AddPair(TJSONPair.Create('spent_on', FormatDateTime('yyyy-mm-dd', Data)));
    JsonTimeEntry.AddPair(TJSONPair.Create('hours', TJSONNumber.Create(Horas)));
    JsonTimeEntry.AddPair(TJSONPair.Create('comments', Comentario));

    JsonTime.AddPair('time_entry', JsonTimeEntry);

    RESTRequest1.Params[0].Value := FrmHoras.edtRedmineToken.EditValue;
    RESTRequest1.Params[1].Value := JsonTime.ToJSON;

    RESTRequest1.Execute;
  finally
    JsonTime.Free;
  end;
end;


procedure TdmRegistrar.Enviar;
begin
  DmRegistros.ClientDataSet1.DisableControls;
  try
    DmRegistros.ClientDataSet1.First;
    while not DmRegistros.ClientDataSet1.Eof do
    begin
      Enviar(DmRegistros.ClientDataSet1projeto.Value, DmRegistros.ClientDataSet1tarefa.Value,
        DmRegistros.ClientDataSet1tempo.Value, TAtividades(DmRegistros.ClientDataSet1atividade.Value),
        DmRegistros.ClientDataSet1comentario.Value, DmRegistros.ClientDataSet1data.Value);
      DmRegistros.ClientDataSet1.Next;
    end;

    DmLembrete.Timer1.Enabled := False;
  finally
    DmRegistros.ClientDataSet1.EmptyDataSet;
    DmRegistros.ClientDataSet1.EnableControls;
  end;
end;

end.
