*** Settings ***
Documentation    Cenários de teste de autenticação no Sauce Demo usando massa externa.
Resource         ../resources/base.resource
Test Setup       Iniciar Sessao
Test Teardown    Encerrar Sessao

*** Test Cases ***
Cenário: Login com sucesso no Sauce Demo
    [Tags]    smoke    positivo
    ${dados}=    Obter Dados Do Usuario    usuario_valido
    Preencher Credenciais    ${dados['user']}    ${dados['pass']}
    Submeter Login
    Get Url                 contains           /inventory.html