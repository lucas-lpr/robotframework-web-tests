*** Settings ***
Documentation    Cenários de teste de autenticação no Sauce Demo usando massa externa.
Resource         ../resources/base.resource
Test Setup       Iniciar Sessao
Test Teardown    Encerrar Sessao

*** Test Cases ***
Cenário: Login com sucesso no Sauce Demo
    [Tags]    smoke    regressao    login_sucesso    autenticacao
    ${dados}=    Obter Dados Do Usuario    usuario_valido
    Preencher Credenciais    ${dados['user']}    ${dados['pass']}
    Submeter Login
    Get Url    contains    /inventory.html

Cenário: Login com senha incorreta
    [Tags]    regressao    login_senha_incorreta    autenticacao
    ${dados}=    Obter Dados Do Usuario    usuario_invalido
    Preencher Credenciais    ${dados['user']}    ${dados['pass']}
    Submeter Login
    Validar Mensagem De Erro    ${dados['mensagem_erro']}
