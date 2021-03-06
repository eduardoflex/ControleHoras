unit dRegistros;

interface

uses
  System.SysUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxGrid,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxSpinEdit, cxImageComboBox,
  Datasnap.DBClient, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  System.Classes, uAtividade, Vcl.Controls, System.Types;

type
  TInfoRegistro = record
    inicio: TDateTime;
    chamado: Integer;
    atividade: TAtividades;
    comentario: string;

  end;

  TDmRegistros = class(TDataModule)
    cxGridViewRepository1: TcxGridViewRepository;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cxGridViewRepository1DBTableView1: TcxGridDBTableView;
    cxGridViewRepository1DBTableView1tempo: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1tarefa: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1atividade: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1comentario: TcxGridDBColumn;
    ClientDataSet1tempo: TCurrencyField;
    ClientDataSet1tarefa: TIntegerField;
    ClientDataSet1atividade: TIntegerField;
    ClientDataSet1comentario: TWideStringField;
    ClientDataSet1projeto: TIntegerField;
    ClientDataSet1data: TDateField;
    cxGridViewRepository1DBTableView1projeto: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1data: TcxGridDBColumn;

    procedure DataModuleCreate(Sender: TObject);
    procedure cxGridViewRepository1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
      (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGridViewRepository1DBTableView1tempoGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);

  private const
    FILE_INI = 'Horas.grd';
    procedure RestaurarIniFile;
    procedure Rodar;

  private
    FRegistroAtual: TInfoRegistro;
    FRodando: Boolean;

    procedure SetRegistroAtual(const Value: TInfoRegistro);

    function GetTempo(SegundosDesconto: Integer): Currency;
    procedure AddRegistro(SegundosDesconto: Integer = 0);
    procedure TranslateGrid;

  public
    procedure Parar(SegundosDesconto: Integer = 0);
    procedure SaveGrid;
    procedure ContinuarSelecionado;

    property RegistroAtual: TInfoRegistro read FRegistroAtual write SetRegistroAtual;

  end;

var
  DmRegistros: TDmRegistros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDataModule3 }

uses
  dxCore, cxGridStrs, System.DateUtils, System.Math, Vcl.Dialogs, System.Variants, fHoras, dOpcoes;


procedure TDmRegistros.SaveGrid;
begin
  cxGridViewRepository1DBTableView1.StoreToIniFile(FILE_INI, False);
end;


procedure TDmRegistros.Rodar;
begin
  FrmHoras.Timer1.Enabled := True;
  FRodando := True;
  DmOpcoes.Parar1.Enabled := True;
end;


procedure TDmRegistros.TranslateGrid;
begin
  cxSetResourceString(@scxGridNoDataInfoText, 'Sem horas registradas');
  cxSetResourceString(@scxGridGroupByBoxCaption, 'Arraste para agrupar');
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText, 'Remover registro?');
  cxSetResourceString(@scxGridColumnsQuickCustomizationHint, 'Customize as colunas');
end;


procedure TDmRegistros.SetRegistroAtual(const Value: TInfoRegistro);
begin
  if FRodando then
    AddRegistro;
  FRegistroAtual := Value;
  Rodar;
end;


procedure TDmRegistros.ContinuarSelecionado;
var
  info: TInfoRegistro;
begin
  if not ClientDataSet1.Active then
    Exit;

  info := default (TInfoRegistro);
  info.inicio := IncMinute(now, - Trunc((ClientDataSet1tempo.Value * 60)));
  info.chamado := ClientDataSet1tarefa.Value;
  info.atividade := TAtividades(ClientDataSet1atividade.Value);
  info.comentario := ClientDataSet1comentario.Value;

  ClientDataSet1.Delete;

  DmOpcoes.SetHints(info.atividade.ToString + ': ' + info.chamado.ToString);
  SetRegistroAtual(info);
end;


procedure TDmRegistros.RestaurarIniFile;
begin
  if FileExists(FILE_INI) then
    cxGridViewRepository1DBTableView1.RestoreFromIniFile(FILE_INI);
end;


procedure TDmRegistros.cxGridViewRepository1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
  (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if VarType(AValue) in [varCurrency, varDouble, varSmallint, varInteger, varShortInt, varWord, varInt64] then
  begin
    AText := FormatFloat('0.00', AValue);
    AText := AText + FormatDateTime(' | hh:mm', - IncMinute(Date, AValue * 60));
  end
  else
    AText := '';
end;


procedure TDmRegistros.cxGridViewRepository1DBTableView1tempoGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  if VarType(ACellViewInfo.Value) in
    [varCurrency, varDouble, varSmallint, varInteger, varShortInt, varWord, varInt64] then
  begin
    AHintText := AHintText + FormatDateTime('hh:mm', - IncMinute(Date, ACellViewInfo.Value * 60));
  end
  else
    AHintText := '';
end;


procedure TDmRegistros.DataModuleCreate(Sender: TObject);
begin
  TranslateGrid;
  RestaurarIniFile;
end;


function TDmRegistros.GetTempo(SegundosDesconto: Integer): Currency;
begin
  Result := RoundTo(MinutesBetween(IncSecond(now, - SegundosDesconto), FRegistroAtual.inicio) / 60, - 2);
end;


procedure TDmRegistros.Parar(SegundosDesconto: Integer);
begin
  if FRodando then
    AddRegistro(SegundosDesconto);
  FRodando := False;
  FRegistroAtual := default (TInfoRegistro);
  FRegistroAtual.inicio := now;
  DmOpcoes.SetHints('Parado');
  DmOpcoes.Parar1.Enabled := False;

  if Assigned(DmOpcoes.ItemSelecionado) then
  begin
    DmOpcoes.ItemSelecionado.Checked := False;

    if Assigned(DmOpcoes.ItemSelecionado.Parent) then
      DmOpcoes.ItemSelecionado.Parent.Checked := False;
  end;

  DmOpcoes.ItemSelecionado := nil;

  FrmHoras.dxRibbonStatusBar1.Panels[1].Text := '00:00:00';
end;


procedure TDmRegistros.AddRegistro(SegundosDesconto: Integer);
begin
  if not ClientDataSet1.Active then
    ClientDataSet1.Open;

  ClientDataSet1.Append;
  ClientDataSet1tempo.Value := GetTempo(SegundosDesconto);
  ClientDataSet1tarefa.Value := FRegistroAtual.chamado;
  ClientDataSet1atividade.Value := Ord(FRegistroAtual.atividade);
  ClientDataSet1comentario.Value := FRegistroAtual.comentario.Replace('&', '');
  ClientDataSet1data.Value := Today;
  ClientDataSet1projeto.Value := FrmHoras.edtRedmineProjeto.EditValue;
  ClientDataSet1.Post;
end;

end.
