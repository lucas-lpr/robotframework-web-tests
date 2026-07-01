*** Settings ***
Documentation    Cenários de teste de fechamento de carrinho e finalização de compra (Checkout).
Resource         ../resources/base.resource
Test Setup       Iniciar Sessao
Test Teardown    Encerrar Sessao

*** Test Cases ***
Cenário: Realizar compra de ponta a ponta com sucesso
    [Tags]    smoke    regressao    checkout_e2e    checkout
    ${dados}=    Obter Dados Do Usuario    usuario_valido
    Preencher Credenciais    ${dados['user']}    ${dados['pass']}
    Submeter Login
    
    Adicionar Mochila Ao Carrinho
    Adicionar Lanterna Ao Carrinho
    Validar Quantidade De Itens No Carrinho    2
    Acessar O Carrinho De Compras
    
    Avançar Para O Checkout
    Preencher Informações De Entrega    Lucas    QA    12345-678
    Confirmar Informações De Envio
    Finalizar Pedido
    Validar Compra Concluída Com Sucesso    Thank you for your order!