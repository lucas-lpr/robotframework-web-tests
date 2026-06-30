*** Settings ***
Library      Browser
Variables    ../elements/inventory_elements.py

*** Keywords ***
Adicionar Mochila Ao Carrinho
    Click    ${btn_add_backpack}

Adicionar Lanterna Ao Carrinho
    Click    ${btn_add_bike_light}

Validar Quantidade De Itens No Carrinho
    [Arguments]    ${QUANTIDADE_ESPERADA}
    # Valida se o texto dentro do ícone do carrinho bate exatamente com o número enviado
    Get Text       ${badge_cart_counter}    ==    ${QUANTIDADE_ESPERADA}

Acessar O Carrinho De Compras
    Click    ${icon_cart}