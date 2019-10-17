unit uAtividade;

interface

type
  TAtividades = (Desconhecida = 0, Atendimento = 8, Desenvolvimento = 9, Teste = 10, Analise = 11, Implantacao = 28,
    Organizacional = 29, Retorno = 49);

  TAtividadesHelper = record helper for TAtividades
  public
    function ToString: string;

  end;

implementation

uses
  System.TypInfo, System.SysUtils;

{ TAtividadesHelper }


function TAtividadesHelper.ToString: string;
begin
  case self of
    Desconhecida:
      Result := 'Desconhecida';
    Atendimento:
      Result := 'Atendimento';
    Desenvolvimento:
      Result := 'Desenvolvimento';
    Teste:
      Result := 'Teste';
    Analise:
      Result := 'Análise';
    Implantacao:
      Result := 'Implantação';
    Organizacional:
      Result := 'Organizacional';
    Retorno:
      Result := 'Retorno';
  end;
end;

end.
