unit dLembrete;

interface

uses
  System.SysUtils, System.Classes, JvComponentBase, JvThreadTimer, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxClasses,
  dxAlertWindow, Vcl.ExtCtrls, dxSkinsDefaultPainters, System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList,
  Vcl.Menus;

type
  TDmLembrete = class(TDataModule)
    dxAlertWindowManager1: TdxAlertWindowManager;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    cxImageList1: TcxImageList;
    Registrarhoras1: TMenuItem;
    Pararlembretes1: TMenuItem;

    procedure Timer1Timer(Sender: TObject);
    procedure dxAlertWindowManager1Click(Sender: TObject; AAlertWindow: TdxAlertWindow);
    procedure Registrarhoras1Click(Sender: TObject);
    procedure Pararlembretes1Click(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);

  end;

var
  DmLembrete: TDmLembrete;

implementation

uses
  fHoras, dRegistrar;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}


procedure TDmLembrete.DataModuleCreate(Sender: TObject);
begin
  Timer1.Interval := FrmHoras.edtLembreteIntervalo.EditValue * 1000;
  Timer1.Enabled := FrmHoras.chkLembreteAtivo.EditValue;
end;


procedure TDmLembrete.dxAlertWindowManager1Click(Sender: TObject; AAlertWindow: TdxAlertWindow);
begin
  FrmHoras.Show;
end;


procedure TDmLembrete.Pararlembretes1Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  FrmHoras.chkLembreteAtivo.EditValue := False;
end;


procedure TDmLembrete.Registrarhoras1Click(Sender: TObject);
begin
  DmRegistrar.Enviar;
end;


procedure TDmLembrete.Timer1Timer(Sender: TObject);
var
  Agora: TDateTime;
  Hora: TDateTime;
begin
  Agora := Now;
  Hora := TDateTime(FrmHoras.edtLembreteHora1.EditValue);
  if ((Agora - trunc(Agora)) >= (Hora - trunc(Hora))) then
    dxAlertWindowManager1.Show('Lembrete', 'Registrar as horas no redmine', - 1);
end;

end.
