unit dOpcoes;

interface

uses
  System.SysUtils, System.Classes, Vcl.Menus, Vcl.ExtCtrls, System.Generics.Collections, System.ImageList, Vcl.ImgList,
  Vcl.Controls, cxImageList, cxGraphics, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, dxAlertWindow, dxSkinsDefaultPainters;

type
  TDmOpcoes = class(TDataModule)
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Geraodeverso1: TMenuItem;
    Reuniodiria1: TMenuItem;
    Reuniodesprint1: TMenuItem;
    Fechamentodesprint1: TMenuItem;
    Informarchamado1: TMenuItem;
    N2: TMenuItem;
    Selecionarchamado1: TMenuItem;
    N3: TMenuItem;
    cxImageList1: TcxImageList;
    Parar1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    dxAlertWindowManager1: TdxAlertWindowManager;
    Outro1: TMenuItem;
    Reuniogeral1: TMenuItem;

    procedure Refresh1Click(Sender: TObject);
    procedure ChamadoSelecionadoClick(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure Parar1Click(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure SemChamadoClick(Sender: TObject);
    procedure Informarchamado1Click(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);

  private
    FMenuItems: TList<TMenuItem>;
    FTarefaSelecionada: Integer;
    FItemSelecionado: TMenuItem;

    procedure LimparListaMenus;
    procedure IniciarListaMenus;
    procedure PopularListaMenusDev;
    procedure SetTarefaSelecionada(const Value: Integer);
    procedure AdicionarRetorno(menuItem: TMenuItem);
    procedure AdicionarDesenvolvimento(menuItem: TMenuItem);
    procedure AdicionarDescricao(menuItem: TMenuItem);
    procedure AdicionarAnalise(menuItem: TMenuItem);
    procedure AdicionarTeste(menuItem: TMenuItem);
    procedure PopularListaMenusAnalise;
    procedure PopularListaMenusTeste;

  public
    procedure SetHints(const Value: string);

    property ItemSelecionado: TMenuItem read FItemSelecionado write FItemSelecionado;

  end;

var
  DmOpcoes: TDmOpcoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

uses
  dTarefas, dRegistros, fHoras, uAtividade, Vcl.Dialogs, dSituacao, uSituacao;


procedure TDmOpcoes.Refresh1Click(Sender: TObject);
begin
  try
    IniciarListaMenus;
    if FrmHoras.btnDev.Down then
      PopularListaMenusDev
    else if FrmHoras.btnTeste.Down then
      PopularListaMenusTeste
    else if FrmHoras.btnAnalise.Down then
      PopularListaMenusAnalise;
    Selecionarchamado1.enabled := True;
  except
    on E: Exception do
      dxAlertWindowManager1.Show('Erro', E.Message, 7);
  end;
end;


procedure TDmOpcoes.LimparListaMenus;
var
  menuItem: TMenuItem;
begin
  if not Assigned(FMenuItems) then
    Exit;

  try
    for menuItem in FMenuItems do
      if Assigned(menuItem) then
        menuItem.Free;
    FMenuItems.Clear;
  except
  end;
end;


procedure TDmOpcoes.ChamadoSelecionadoClick(Sender: TObject);
var
  Registro: TInfoRegistro;
begin
  if Assigned(FItemSelecionado) then
    FItemSelecionado.Checked := False;

  if Assigned(FItemSelecionado.Parent) then
    FItemSelecionado.Parent.Checked := False;

  FItemSelecionado := TMenuItem(Sender);

  Registro := default (TInfoRegistro);
  Registro.inicio := now;
  Registro.chamado := FTarefaSelecionada;
  Registro.atividade := TAtividades(FItemSelecionado.Tag);
  DmRegistros.RegistroAtual := Registro;

  SetHints(TAtividades(FItemSelecionado.Tag).ToString + ': ' + FTarefaSelecionada.ToString);

  if not Assigned(FItemSelecionado.Parent) then
    Exit;

  FItemSelecionado.Parent.Checked := True;
  SetTarefaSelecionada(FItemSelecionado.Parent.Caption.Replace('&', '').ToInteger);

  if not Assigned(FItemSelecionado.Parent.Items[0]) then
    SetHints(TAtividades(FItemSelecionado.Tag).ToString + ': ' + FTarefaSelecionada.ToString + ' (' +
      FItemSelecionado.Parent.Items[0].Caption.Replace('&', '') + ')');
end;


procedure TDmOpcoes.DataModuleCreate(Sender: TObject);
begin
  DmRegistros.Parar;
{$IFDEF DEBUG}
  TrayIcon1.IconIndex := 17;
{$ENDIF}
end;


procedure TDmOpcoes.SemChamadoClick(Sender: TObject);
var
  Registro: TInfoRegistro;
begin
  if Assigned(FItemSelecionado) then
  begin
    FItemSelecionado.Checked := False;

    if Assigned(FItemSelecionado.Parent) then
      FItemSelecionado.Parent.Checked := False;
  end;

  FItemSelecionado := TMenuItem(Sender);
  FItemSelecionado.Checked := True;

  Registro := default (TInfoRegistro);
  Registro.inicio := now;
  Registro.atividade := TAtividades(FItemSelecionado.Tag);
  Registro.comentario := FItemSelecionado.Hint.Replace('&', '');

  DmRegistros.RegistroAtual := Registro;

  SetHints(FItemSelecionado.Caption.Replace('&', ''));
end;


procedure TDmOpcoes.Informarchamado1Click(Sender: TObject);
var
  IdChamado: string;
  Registro: TInfoRegistro;
begin
  if Assigned(FItemSelecionado) then
  begin
    FItemSelecionado.Checked := False;

    if Assigned(FItemSelecionado.Parent) then
      FItemSelecionado.Parent.Checked := False;
  end;

  FItemSelecionado := TMenuItem(Sender);
  FItemSelecionado.Checked := True;

  InputQuery('Informar manualmente', 'Informe o número do chamado: ', IdChamado);
  SetTarefaSelecionada(StrToIntDef(IdChamado, 0));

  Registro := default (TInfoRegistro);
  Registro.inicio := now;
  Registro.chamado := FTarefaSelecionada;
  Registro.atividade := Desconhecida;
  DmRegistros.RegistroAtual := Registro;

  SetHints('Tarefa: ' + FTarefaSelecionada.ToString);
end;


procedure TDmOpcoes.IniciarListaMenus;
begin
  if Assigned(FMenuItems) then
    LimparListaMenus
  else
    FMenuItems := TList<TMenuItem>.Create;
end;


procedure TDmOpcoes.Parar1Click(Sender: TObject);
begin
  DmRegistros.Parar;
end;


procedure TDmOpcoes.PopularListaMenusDev;
var
  statuses: TDictionary<string, TDictionary<Integer, string>>;
  status: string;
  chamado: Integer;
  menuItem: TMenuItem;
  itemVersao: TMenuItem;
  itemVersao2: TMenuItem;
begin
  statuses := DmTarefas.GetListaChamadosDev;
  if not Assigned(statuses) then
    Exit;

  for status in statuses.Keys do
    try
      if status = '<< ---- >>' then
        continue;

      itemVersao := TMenuItem.Create(Self);
      itemVersao.Caption := status;
      Selecionarchamado1.Add(itemVersao);

      for chamado in statuses[status].Keys do
      begin
        menuItem := TMenuItem.Create(Self);
        menuItem.Caption := chamado.ToString;
        menuItem.Hint := statuses[status][chamado];
        menuItem.ImageIndex := 5;

        AdicionarDescricao(menuItem);
        AdicionarDesenvolvimento(menuItem);
        AdicionarRetorno(menuItem);

        itemVersao.Add(menuItem);
        FMenuItems.Add(menuItem);
      end;

      FMenuItems.Add(itemVersao);
      itemVersao2 := TMenuItem.Create(Self);
      itemVersao2.Caption := '-';
      Selecionarchamado1.Add(itemVersao2);
      FMenuItems.Add(itemVersao2);
    except
    end;
end;


procedure TDmOpcoes.PopularListaMenusAnalise;
var
  statuses: TDictionary<string, TDictionary<Integer, string>>;
  status: string;
  chamado: Integer;
  menuItem: TMenuItem;
  itemVersao: TMenuItem;
  itemVersao2: TMenuItem;
begin
  statuses := DmTarefas.GetListaChamadosAnalise;
  if not Assigned(statuses) then
    Exit;

  for status in statuses.Keys do
    try
      if status = '<< ---- >>' then
        continue;

      itemVersao := TMenuItem.Create(Self);
      itemVersao.Caption := status;
      Selecionarchamado1.Add(itemVersao);

      for chamado in statuses[status].Keys do
      begin
        menuItem := TMenuItem.Create(Self);
        menuItem.Caption := chamado.ToString;
        menuItem.Hint := statuses[status][chamado];
        menuItem.ImageIndex := 5;

        AdicionarDescricao(menuItem);
        AdicionarTeste(menuItem);
        AdicionarAnalise(menuItem);

        itemVersao.Add(menuItem);
        FMenuItems.Add(menuItem);
      end;

      FMenuItems.Add(itemVersao);
      itemVersao2 := TMenuItem.Create(Self);
      itemVersao2.Caption := '-';
      Selecionarchamado1.Add(itemVersao2);
      FMenuItems.Add(itemVersao2);
    except
    end;
end;


procedure TDmOpcoes.PopularListaMenusTeste;
var
  versoes: TDictionary<string, TDictionary<Integer, string>>;
  versao: string;
  chamado: Integer;
  menuItem: TMenuItem;
  itemVersao: TMenuItem;
  itemVersao2: TMenuItem;
begin
  versoes := DmTarefas.GetListaChamadosTeste;
  if not Assigned(versoes) then
    Exit;

  for versao in versoes.Keys do
    try
      if versao = '<< ---- >>' then
        continue;

      itemVersao := TMenuItem.Create(Self);
      if versao = '' then
        itemVersao.Caption := '(blank)'
      else
        itemVersao.Caption := versao;
      Selecionarchamado1.Add(itemVersao);

      for chamado in versoes[versao].Keys do
      begin
        menuItem := TMenuItem.Create(Self);
        menuItem.Caption := chamado.ToString;
        menuItem.Hint := versoes[versao][chamado];
        menuItem.ImageIndex := 5;

        AdicionarDescricao(menuItem);
        AdicionarTeste(menuItem);
        AdicionarAnalise(menuItem);

        itemVersao.Add(menuItem);
        FMenuItems.Add(menuItem);
      end;

      FMenuItems.Add(itemVersao);
      itemVersao2 := TMenuItem.Create(Self);
      itemVersao2.Caption := '-';
      Selecionarchamado1.Add(itemVersao2);
      FMenuItems.Add(itemVersao2);
    except
    end;
end;


procedure TDmOpcoes.SetHints(const Value: string);
begin
  TrayIcon1.Hint := Value;
  FrmHoras.dxRibbonStatusBar1.Panels[2].Text := TrayIcon1.Hint;
end;


procedure TDmOpcoes.AdicionarDescricao(menuItem: TMenuItem);
var
  menuSubItem: TMenuItem;
begin
  if not Assigned(menuItem) then
    Exit;

  menuSubItem := TMenuItem.Create(Self);
  menuSubItem.Caption := menuItem.Hint;
  menuSubItem.enabled := False;
  menuItem.Add(menuSubItem);

  menuSubItem := TMenuItem.Create(Self);
  menuSubItem.Caption := '-';
  menuItem.Add(menuSubItem);
end;


procedure TDmOpcoes.AdicionarRetorno(menuItem: TMenuItem);
var
  menuSubItem: TMenuItem;
begin
  if not Assigned(menuItem) then
    Exit;

  menuSubItem := TMenuItem.Create(Self);
  menuSubItem.Caption := 'Retorno';
  menuSubItem.OnClick := ChamadoSelecionadoClick;
  menuSubItem.Tag := 49;
  menuSubItem.ImageIndex := 9;
  menuItem.Add(menuSubItem);
end;


procedure TDmOpcoes.AdicionarDesenvolvimento(menuItem: TMenuItem);
var
  menuSubItem: TMenuItem;
begin
  if not Assigned(menuItem) then
    Exit;

  menuSubItem := TMenuItem.Create(Self);
  menuSubItem.Caption := 'Desenvolvimento';
  menuSubItem.OnClick := ChamadoSelecionadoClick;
  menuSubItem.Tag := 9;
  menuSubItem.ImageIndex := 8;
  menuItem.Add(menuSubItem);
end;


procedure TDmOpcoes.AdicionarTeste(menuItem: TMenuItem);
var
  menuSubItem: TMenuItem;
begin
  if not Assigned(menuItem) then
    Exit;

  menuSubItem := TMenuItem.Create(Self);
  menuSubItem.Caption := 'Teste';
  menuSubItem.OnClick := ChamadoSelecionadoClick;
  menuSubItem.Tag := 10;
  menuSubItem.ImageIndex := 11;
  menuItem.Add(menuSubItem);
end;


procedure TDmOpcoes.AdicionarAnalise(menuItem: TMenuItem);
var
  menuSubItem: TMenuItem;
begin
  if not Assigned(menuItem) then
    Exit;

  menuSubItem := TMenuItem.Create(Self);
  menuSubItem.Caption := 'Análise';
  menuSubItem.OnClick := ChamadoSelecionadoClick;
  menuSubItem.Tag := 11;
  menuSubItem.ImageIndex := 16;
  menuItem.Add(menuSubItem);
end;


procedure TDmOpcoes.SetTarefaSelecionada(const Value: Integer);
begin
  FTarefaSelecionada := Value;
end;


procedure TDmOpcoes.TrayIcon1Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;


procedure TDmOpcoes.TrayIcon1DblClick(Sender: TObject);
begin
  FrmHoras.Show;
end;

end.
