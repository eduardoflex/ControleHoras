unit dTarefas;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  System.Generics.Collections, uPerfil;

type
  TDmTarefas = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;

  private
    FListaChamadosDevAnalise: TDictionary<string, TDictionary<Integer, string>>;
    FListaChamadosTeste: TDictionary<string, TDictionary<Integer, string>>;

    procedure CarregarPerfilDevAnalise(const dev: boolean);
    procedure CarregarPerfilTeste;

  public
    function GetListaChamadosDev: TDictionary<string, TDictionary<Integer, string>>;
    function GetListaChamadosTeste: TDictionary<string, TDictionary<Integer, string>>;
    function GetListaChamadosAnalise: TDictionary<string, TDictionary<Integer, string>>;

  end;

var
  DmTarefas: TDmTarefas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

uses
  System.Json, fHoras, System.Variants;

procedure TDmTarefas.CarregarPerfilDevAnalise(const dev: boolean);
var
  JsonTarefas: TJSONObject;
  issue: TJSONValue;
  issues: TJSONArray;
  id: Integer;
  subject: string;
  idS: Integer;
  status: TJSONValue;
  statusAtual: string;
  nmS: string;
  dicionarioAtual: TDictionary<Integer, string>;
begin
  statusAtual := '<< ---- >>';

  RESTRequest1.Params[0].Value := FrmHoras.edtRedmineToken.EditValue;

  if Assigned(FListaChamadosTeste) then
    FListaChamadosDevAnalise.Clear
  else
    FListaChamadosDevAnalise := TDictionary<string, TDictionary<Integer, string>>.Create;

  if dev then
    if FrmHoras.edtUrlDev.EditValue = null then
      Exit
    else
      RESTClient1.BaseURL := FrmHoras.edtUrlDev.EditValue
  else
    if FrmHoras.edtUrlAnalise.EditValue = null then
      Exit
    else
      RESTClient1.BaseURL := FrmHoras.edtUrlAnalise.EditValue;

  if RESTClient1.BaseURL = '' then
    Exit;

  RESTRequest1.Execute;
  if RESTResponse1.StatusCode <> 200 then
    raise Exception.Create(RESTResponse1.StatusCode.ToString + ' - ' + RESTResponse1.StatusText);

  JsonTarefas := TJSONObject(RESTResponse1.JSONValue);

  if not JsonTarefas.TryGetValue('issues', issues) then
    Exit;

  dicionarioAtual := TDictionary<Integer, string>.Create;

  for issue in issues do
    if issue.TryGetValue('id', id) and issue.TryGetValue('subject', subject) and issue.TryGetValue('status', status) and
      status.TryGetValue('id', idS) and status.TryGetValue('name', nmS) then
    begin
      if nmS <> statusAtual then
      begin
        if Assigned(dicionarioAtual) and (statusAtual <> '<< ---- >>') then
          FListaChamadosDevAnalise.Add(statusAtual, dicionarioAtual);

        dicionarioAtual := TDictionary<Integer, string>.Create;
        dicionarioAtual.Add(id, subject);

        statusAtual := nmS;
      end
      else
        dicionarioAtual.Add(id, subject);
    end;

  if Assigned(dicionarioAtual) and (statusAtual <> '<< ---- >>') then
    FListaChamadosDevAnalise.Add(statusAtual, dicionarioAtual);
end;


procedure TDmTarefas.CarregarPerfilTeste;
var
  JsonTarefas: TJSONObject;
  issue: TJSONValue;
  issues: TJSONArray;
  id: Integer;
  subject: string;
  customs: TJSONArray;
  custom: TJSONValue;
  idF: Integer;
  merge: string;
  mergeAtual: string;
  dicionarioAtual: TDictionary<Integer, string>;
begin
  dicionarioAtual := nil;

  mergeAtual := '<< ---- >>';

  RESTRequest1.Params[0].Value := FrmHoras.edtRedmineToken.EditValue;

  if Assigned(FListaChamadosTeste) then
    FListaChamadosTeste.Clear
  else
    FListaChamadosTeste := TDictionary < string, TDictionary < Integer, string >>.Create;

  if FrmHoras.edtUrlTeste.EditValue = null then
    Exit;

  RESTClient1.BaseURL := FrmHoras.edtUrlTeste.EditValue;

  if RESTClient1.BaseURL = '' then
    Exit;

  RESTRequest1.Execute;
  if RESTResponse1.StatusCode <> 200 then
    raise Exception.Create(RESTResponse1.StatusCode.ToString + ' - ' + RESTResponse1.StatusText);

  JsonTarefas := TJSONObject(RESTResponse1.JSONValue);

  if not JsonTarefas.TryGetValue('issues', issues) then
    Exit;

  for issue in issues do
    if issue.TryGetValue('id', id) and issue.TryGetValue('subject', subject) and
      issue.TryGetValue('custom_fields', customs) then
      for custom in customs do
        if custom.TryGetValue('id', idF) and (idF = 28) and custom.TryGetValue('value', merge) then
        begin
          if merge <> mergeAtual then
          begin
            if Assigned(dicionarioAtual) and (mergeAtual <> '<< ---- >>') then
              FListaChamadosTeste.Add(mergeAtual, dicionarioAtual);

            dicionarioAtual := TDictionary<Integer, string>.Create;
            dicionarioAtual.Add(id, subject);

            mergeAtual := merge;
          end
          else
            dicionarioAtual.Add(id, subject);
        end;
end;


function TDmTarefas.GetListaChamadosAnalise: TDictionary<string, TDictionary<Integer, string>>;
begin
  CarregarPerfilDevAnalise(False);
  Result := FListaChamadosDevAnalise;
end;


function TDmTarefas.GetListaChamadosDev: TDictionary<string, TDictionary<Integer, string>>;
begin
  CarregarPerfilDevAnalise(True);
  Result := FListaChamadosDevAnalise;
end;


function TDmTarefas.GetListaChamadosTeste: TDictionary<string, TDictionary<Integer, string>>;
begin
  CarregarPerfilTeste;
  Result := FListaChamadosTeste;
end;

end.
