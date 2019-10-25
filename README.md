# ControleHoras

[![](https://img.shields.io/github/release/eduardoflex/ControleHoras.svg)](https://github.com/eduardoflex/ControleHoras/releases)
[![](https://img.shields.io/github/issues/eduardoflex/ControleHoras.svg)](https://github.com/eduardoflex/ControleHoras/issues)

## RedMine - Desenvolvimento Flex Smart

### Configurações necessárias

#### Redmine

##### Token

O _token_ do _Redmine_ é necessário para funcionamento de qualquer requisição na API do _redmine.

O _token_ está disponível para visualização na [Minha conta do _Redmine_](http://104.236.197.223/sac/my/account)

##### Projeto

O projeto é o identificador (inteiro) do projeto do _Redmine_.

No caso do projeto [Desenvolvimento Flex Smart](http://104.236.197.223/sac/projects/desenvolvimento-flextotal), o identificador é **123**.

### Perfis de acesso

Há três perfis de acesso para esse aplicativo: *desenvolvedor*, *analista* e *testador*. Cada um dos perfis executa a consulta como é informada, com a diferença que cada um utiliza um campo diferente do agrupamento de tarefas e opções diferentes de atividades.

#### URL de consulta de chamados

A lista de chamados é construída a partir de uma **consulta de tarefas do RedMine**. A consulta pode ser construída no navegador, seguindo os agrupamentos indicados no hint de cada perfil de acesso.

Para informar a *url* da consulta nos perfis de acesso do Controlador de Horas, é necessário incluir o `.json` após a palavra `issues`, antes dos filtros de consulta da *url*.

A consulta deve ser informada no perfil correto que será utilizado pelo usuário e o perfil de acesso deve ser selecionado.

### Lista de tarefas

As listas de tarefas são carregadas a partir da consulta informada. Ela é visível no menu adicionar, ou no popup menu do ícone do aplicativo da bandeja do Windows > Selecionar tarefa, exibido conforme o agrupamento do perfil.

#### Selecionar uma tarefa

Ao selecionar uma tarefa é possível visualizar o nome da tarefa e as atividades padrões para o perfil. Ao selecionar uma tarefa, qualquer atividade em execução é parada e é iniciada uma nova contagem para essa tarefa.

Só quando a execução de uma tarefa para ela é adicionada à grid.

#### Registrando as horas

Ao clicar em registrar as horas, todos os regisros dos gris e mais a atividade em execução, serão registrados no _RedMine_ via requisição da API.

## Movidesk - Atendimento Flex Smart

Aguardando documentação da API para desenvolvimento
