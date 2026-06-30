*** Settings ***
Library      Browser
Variables    ../elements/login_elements.py

*** Keywords ***
Preencher Credenciais
    [Arguments]    ${USUARIO}    ${SENHA}
    Fill Text      ${txt_username}    ${USUARIO}
    Fill Text      ${txt_password}    ${SENHA}

Submeter Login
    Click          ${btn_login}
