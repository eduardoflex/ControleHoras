unit fHoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, cxGrid,
  Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinSharp,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinSeven,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinTheAsphaltWorld,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinsForm,
  dxSkinXmas2008Blue, cxClasses, cxGridLevel, dxLayoutContainer, dxLayoutControl, System.Win.TaskbarCore, Vcl.Taskbar,
  dxLayoutLookAndFeels, dxBar, dxBarApplicationMenu, dxRibbon, dxStatusBar, dxRibbonStatusBar, dxRibbonSkins,
  dxRibbonCustomizationForm, cxPropertiesStore, System.ImageList, Vcl.ImgList, cxImageList, dxDateTimeWheelPicker,
  cxBarEditItem, dxBarExtItems, dxSkinsDefaultPainters, cxMemo, cxButtonEdit, cxTextEdit, cxCheckBox, cxContainer,
  cxEdit, dxGDIPlusClasses, cxImage, cxRadioGroup, dxTokenEdit, dxRibbonGallery, dxBarBuiltInMenu,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TFrmHoras = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxSkinController1: TdxSkinController;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbon1: TdxRibbon;
    cxPropertiesStore1: TcxPropertiesStore;
    cxImageList1: TcxImageList;
    edtLembreteHora1: TcxBarEditItem;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    cxImageList2: TcxImageList;
    edtRedmineToken: TcxBarEditItem;
    btnSair: TdxBarLargeButton;
    btnRedmineSalvar: TdxBarLargeButton;
    btnRedmineCarregar: TdxBarLargeButton;
    edtRedmineProjeto: TcxBarEditItem;
    chkLembreteAtivo: TcxBarEditItem;
    edtLembreteIntervalo: TcxBarEditItem;
    dxRibbonStatusBar1Container1: TdxStatusBarContainerControl;
    cxImage1: TcxImage;
    dxBarSubItem1: TdxBarSubItem;
    btnDev: TdxBarButton;
    btnAnalise: TdxBarButton;
    btnTeste: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    edtUrlTeste: TcxBarEditItem;
    dxRibbonDropDownGallery2: TdxRibbonDropDownGallery;
    dxRibbonDropDownGallery3: TdxRibbonDropDownGallery;
    edtUrlAnalise: TcxBarEditItem;
    edtUrlDev: TcxBarEditItem;
    Timer1: TTimer;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PopupMenu1: TPopupMenu;
    Continuar1: TMenuItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxRibbon1Tab1: TdxRibbonTab;

    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sair1Click(Sender: TObject);
    procedure btnRedmineCarregarClick(Sender: TObject);
    procedure btnRedmineSalvarClick(Sender: TObject);
    procedure chkLembreteAtivoPropertiesEditValueChanged(Sender: TObject);
    procedure edtLembreteIntervaloPropertiesEditValueChanged(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDevClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Continuar1Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxRibbon1TabChanging(Sender: TdxCustomRibbon; ANewTab: TdxRibbonTab; var Allow: Boolean);

  private
    FCanClose: Boolean;

    procedure SaveProperties;

  end;

var
  FrmHoras: TFrmHoras;

implementation

uses
  dRegistros, cxStorage, dOpcoes, dRegistrar, uAtividade, System.DateUtils, dLembrete, System.UITypes;

{$R *.dfm}


procedure TFrmHoras.btnRedmineSalvarClick(Sender: TObject);
begin
  DmRegistrar.Enviar;
end;


procedure TFrmHoras.chkLembreteAtivoPropertiesEditValueChanged(Sender: TObject);
begin
  DmLembrete.Timer1.Enabled := chkLembreteAtivo.EditValue;
end;


procedure TFrmHoras.Continuar1Click(Sender: TObject);
begin
  DmRegistros.ContinuarSelecionado;
end;

procedure TFrmHoras.dxBarLargeButton1Click(Sender: TObject);
begin
  DmOpcoes.PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFrmHoras.dxRibbon1TabChanging(Sender: TdxCustomRibbon; ANewTab: TdxRibbonTab; var Allow: Boolean);
begin
  Allow := ANewTab = dxRibbon1Tab2;
end;

procedure TFrmHoras.edtLembreteIntervaloPropertiesEditValueChanged(Sender: TObject);
begin
  DmLembrete.Timer1.Interval := edtLembreteIntervalo.EditValue * 1000;
end;


procedure TFrmHoras.SaveProperties;
begin
  cxPropertiesStore1.StoreTo;
  DmRegistros.SaveGrid;
end;


procedure TFrmHoras.Timer1Timer(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[1].Text := FormatDateTime('hh:nn:ss', (Now - DmRegistros.RegistroAtual.inicio));
end;


procedure TFrmHoras.btnDevClick(Sender: TObject);
begin
  if TComponent(Sender).Tag = 10 then
  begin
    btnAnalise.Down := False;
    btnTeste.Down := False;
  end
  else if TComponent(Sender).Tag = 20 then
  begin
    btnDev.Down := False;
    btnTeste.Down := False;
  end
  else if TComponent(Sender).Tag = 30 then
  begin
    btnAnalise.Down := False;
    btnDev.Down := False;
  end;
  DmOpcoes.Refresh1Click(Sender);
end;


procedure TFrmHoras.btnRedmineCarregarClick(Sender: TObject);
begin
  DmOpcoes.Refresh1Click(Sender);
end;


procedure TFrmHoras.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False or FCanClose;
  Hide;
  SaveProperties;
end;


procedure TFrmHoras.FormCreate(Sender: TObject);
begin
{$IFNDEF DEBUG}dxRibbonStatusBar1.Panels[0].Visible := False; {$ENDIF}
end;


procedure TFrmHoras.FormResize(Sender: TObject);
begin
  if Self.WindowState in [wsMaximized, wsNormal] then
    dxLayoutControl1.Top := dxRibbon1.Height;
end;


procedure TFrmHoras.FormShow(Sender: TObject);
begin
  cxGrid1Level1.GridView := DmRegistros.cxGridViewRepository1DBTableView1;
  cxGridPopupMenu1.PopupMenus[0].GridView := cxGrid1Level1.GridView;
  if VarType(edtRedmineToken.EditValue) <> varNull then
    DmOpcoes.Refresh1Click(Sender);
end;


procedure TFrmHoras.Sair1Click(Sender: TObject);
begin
  FCanClose := MessageDlg('Deseja fechar a aplicação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
  Close;
end;

end.
