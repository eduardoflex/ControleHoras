unit dParado;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls;

type
  TDmParado = class(TDataModule)
    Timer1: TTimer;

    procedure Timer1Timer(Sender: TObject);

  private
    FParado: Integer;
    FNotificando: Boolean;

    procedure NotificaParado;
    procedure Notifica15;
    procedure Notifica30;
    procedure Notifica5;

    function SegundosInativo: Integer;

  public

  end;

var
  DmParado: TDmParado;

implementation

uses
  Winapi.Windows, Vcl.Dialogs, Vcl.Controls, dRegistros;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

const
  C30_MIN = 2700;
  C15_MIN = 0900;
  C05_MIN = 0300;


procedure TDmParado.Timer1Timer(Sender: TObject);
var
  segundos: Int64;
begin
  segundos := SegundosInativo;

  if (FParado > segundos) then
    NotificaParado;

  FParado := segundos;
end;


procedure TDmParado.NotificaParado;
begin
  if FNotificando then
    Exit;

  FNotificando := True;

  if (FParado > C05_MIN) and (FParado <= C15_MIN) then
    Notifica5
  else if (FParado > C15_MIN) and (FParado <= C30_MIN) then
    Notifica15
  else if FParado > C30_MIN then
    Notifica30;

  FNotificando := False;
end;


procedure TDmParado.Notifica15;
begin
  if MessageDlg('Você passou mais de 15 minutos inativo. Deseja parar a atividade atual?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DmRegistros.Parar(FParado);
end;


procedure TDmParado.Notifica5;
begin
  MessageDlg('Você passou mais de 5 minutos inativo', mtInformation, [mbOk], 0);
end;


procedure TDmParado.Notifica30;
begin
  MessageDlg('Você passou mais de 30 minutos inativo. A atividade atual foi parada', mtWarning, [mbOk], 0);
end;


function TDmParado.SegundosInativo: Integer;
var
  inputInfo: TLastInputInfo;
begin
  inputInfo.cbSize := SizeOf(TLastInputInfo);
  GetLastInputInfo(inputInfo);
  Result := (GetTickCount - inputInfo.dwTime) div 1000;
end;

end.
