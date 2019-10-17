unit uSituacao;

interface

type
  TStatus = (tsDesconhecido = 0, tsNova = 1, tsResolvida = 3, tsRejeitada = 6, tsAguardDev = 8, tsDesenvolvimento = 9,
    tsAguardHomolog = 10, tsTeste = 11, tsSugestao = 16, tsAdministrativo = 17, tsRetornoDev = 27, tsAguardAceite = 12,
    tsAtendimento = 13, tsAguardAnalise = 14, tsAnalise = 15, tsAguardVersao = 19, tsEnviadoDev = 20, tsSuporte2 = 23,
    tsSolucionado = 25, tsFechado = 26, tsEncerradoTempo = 32, tsAnaliseCOmercial = 36, tsAguardDevRelatorio = 37,
    tsDistribuidor = 38, tsFaturamento = 39, tsEnviadoDevCustom = 40, tsEsperaDev = 41, tsAguardValidaSat = 42,
    tsProcValida = 43, tsHomologado = 44, tsAguardPlanej = 45, tsRetornoAnalise = 46, tsAguardAprovaOrca = 46,
    tsAguardSubTarefa = 48);

  TStatusHelper = record helper for TStatus
  public
    function ToString: string;

  end;

implementation

{ TStatusHelper }


function TStatusHelper.ToString: string;
begin
  case Ord(self) of
    1:
      Result := 'Nova';
    13:
      Result := 'Em Atendimento';
    38:
      Result := 'Responsabilidade Distribuidor';
    23:
      Result := 'Suporte Nível 2';
    37:
      Result := 'Aguardando Desenv. Relatório';
    14:
      Result := 'Aguardando Análise';
    15:
      Result := 'Em Análise';
    20:
      Result := 'Enviado para Desenvolvimento';
    39:
      Result := 'Faturamento';
    12:
      Result := 'Aguardando Aceite do Cliente';
    32:
      Result := 'Encerrado por tempo';
    8:
      Result := 'Aguardando Desenvolvimento';
    9:
      Result := 'Em Desenvolvimento';
    19:
      Result := 'Aguardando - Gerar Versão ';
    10:
      Result := 'Aguardando Homologação';
    11:
      Result := 'Em Teste';
    27:
      Result := 'Retorno para Desenvolvimento';
    3:
      Result := 'Resolvida';
    6:
      Result := 'Rejeitada';
    16:
      Result := 'Sugestão';
    17:
      Result := 'Administrativo';
    36:
      Result := 'Análise Comercial';
    25:
      Result := 'Solucionado';
    26:
      Result := 'Fechado';
    40:
      Result := 'Env. Desenv. com Customização';
    41:
      Result := 'Espera pra Desenvolvimento';
    42:
      Result := 'Aguardando Validação SAT';
    43:
      Result := 'Processo de Validação';
    44:
      Result := 'Homologado';
    45:
      Result := 'Aguardando Planejamento';
    46:
      Result := 'Retorno de Análise';
    47:
      Result := 'Aguardando Aprov. Orçamento';
    48:
      Result := 'Aguardando Sub-Tarefas';
  end;
end;

end.
