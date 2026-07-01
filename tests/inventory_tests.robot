*** Settings ***
Documentation    Cenários de teste da tela de inventário e manipulação de produtos.
Resource         ../resources/base.resource
Test Setup       Iniciar Sessao
Test Teardown    Encerrar Sessao

*** Test Cases ***
Cenário: Adicionar múltiplos produtos ao carrinho com sucesso
    [Tags]    smoke    regressao    adicionar_produtos    produtos
    ${dados}=    Obter Dados Do Usuario    usuario_valido
    Preencher Credenciais    ${dados['user']}    ${dados['pass']}
    Submeter Login
    Adicionar Mochila Ao Carrinho
    Adicionar Lanterna Ao Carrinho
    Validar Quantidade De Itens No Carrinho    2