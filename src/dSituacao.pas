unit dSituacao;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, uSituacao;

type
  TDmSituacao = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;

  private
    function GetSituacao(index: Integer): TStatus;

    procedure SetSituacao(index: Integer; const Value: TStatus);

  public
    property Situacao[index: Integer]: TStatus read GetSituacao write SetSituacao;

  end;

var
  DmSituacao: TDmSituacao;

implementation

uses
  System.JSON, fHoras, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}


function TDmSituacao.GetSituacao(index: Integer): TStatus;
var
  JsonTarefa: TJSONObject;
  issue: TJSONValue;
  status: TJSONValue;
  id: Integer;
begin
  if index <= 0 then
    Exit(TStatus(0));

  RESTClient1.BaseURL := 'http://104.236.197.223/sac/issues/' + index.ToString + '.json';

  RESTRequest1.Params[0].Value := FrmHoras.edtRedmineToken.EditValue;
  RESTRequest1.Execute;

  if RESTResponse1.StatusCode <> 200 then
    raise Exception.Create(RESTResponse1.StatusCode.ToString + ' - ' + RESTResponse1.StatusText);

  JsonTarefa := TJSONObject(RESTResponse1.JSONValue);
  if not JsonTarefa.TryGetValue('issue', issue) then
    Exit(TStatus(0));

  if not issue.TryGetValue('status', status) then
    Exit(TStatus(0));

  if not status.TryGetValue('id', id) then
    Exit(TStatus(0));

  Result := TStatus(id);
end;


procedure TDmSituacao.SetSituacao(index: Integer; const Value: TStatus);
var
  JsonIssue: TJSONObject;
  JsonIssueInfo: TJSONObject;
begin
  JsonIssue := TJSONObject.Create;
  try
    JsonIssueInfo := TJSONObject.Create;

    if index <= 0 then
      Exit;

    RESTClient1.BaseURL := 'http://104.236.197.223/sac/issues/' + index.ToString + '.json';

    JsonIssueInfo.AddPair('status_id', TJSONNumber.Create(Ord(Value)));
    JsonIssue.AddPair('issue', JsonIssueInfo);

    RESTRequest2.Params[0].Value := FrmHoras.edtRedmineToken.EditValue;
    RESTRequest2.Params[1].Value := JsonIssue.ToJSON;

    RESTRequest2.Execute;
  finally
    JsonIssue.Free;
  end;
end;

end.
