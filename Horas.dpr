program Horas;

uses
  Vcl.Forms,
  fHoras in 'src\fHoras.pas' {FrmHoras},
  dTarefas in 'src\dTarefas.pas' {DmTarefas: TDataModule},
  dOpcoes in 'src\dOpcoes.pas' {DmOpcoes: TDataModule},
  dRegistros in 'src\dRegistros.pas' {DmRegistros: TDataModule},
  uAtividade in 'src\uAtividade.pas',
  dLembrete in 'src\dLembrete.pas' {DmLembrete: TDataModule},
  dRegistrar in 'src\dRegistrar.pas' {dmRegistrar: TDataModule},
  dSituacao in 'src\dSituacao.pas' {DataModule1: TDataModule},
  uSituacao in 'src\uSituacao.pas',
  uPerfil in 'src\uPerfil.pas',
  uVersao in 'src\uVersao.pas',
  dParado in 'src\dParado.pas' {DmParado: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmHoras, FrmHoras);
  Application.CreateForm(TDmTarefas, DmTarefas);
  Application.CreateForm(TDmRegistros, DmRegistros);
  Application.CreateForm(TDmOpcoes, DmOpcoes);
  Application.CreateForm(TDmLembrete, DmLembrete);
  Application.CreateForm(TdmRegistrar, dmRegistrar);
  Application.CreateForm(TDmSituacao, DmSituacao);
  Application.CreateForm(TDmParado, DmParado);
  Application.Run;
end.
