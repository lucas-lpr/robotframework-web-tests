*** Settings ***
Documentation    Cenários de teste de autenticação no Sauce Demo.
Resource         ../resources/base.resource
Test Setup       Iniciar Sessao
Test Teardown    Encerrar Sessao

*** Test Cases ***
Cenário: Login com sucesso no Sauce Demo
    [Tags]    smoke    positivo
    Preencher Credenciais    standard_user    secret_sauce
    Submeter Login
    Get Url    contains    /inventory.html