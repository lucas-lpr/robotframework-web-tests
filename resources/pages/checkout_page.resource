*** Settings ***
Library      Browser
Variables    ../elements/checkout_elements.py

*** Keywords ***
Avançar Para O Checkout
    Click    ${btn_checkout}

Preencher Informações De Entrega
    [Arguments]    ${NOME}    ${SOBRENOME}    ${CEP}
    Fill Text      ${txt_first_name}     ${NOME}
    Fill Text      ${txt_last_name}      ${SOBRENOME}
    Fill Text      ${txt_postal_code}    ${CEP}

Confirmar Informações De Envio
    Click    ${btn_continue}

Finalizar Pedido
    Click    ${btn_finish}

Validar Compra Concluída Com Sucesso
    [Arguments]    ${MENSAGEM_ESPERADA}
    Get Text       ${lbl_success_header}    ==    ${MENSAGEM_ESPERADA}