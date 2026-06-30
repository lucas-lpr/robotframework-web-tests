*** Settings ***
Library      Browser
Variables    ../elements/login_elements.py
Library      OperatingSystem
Library      Collections  

*** Keywords ***
Preencher Credenciais
    [Arguments]    ${USUARIO}    ${SENHA}
    Fill Text      ${txt_username}    ${USUARIO}
    Fill Text      ${txt_password}    ${SENHA}

Submeter Login
    Click          ${btn_login}

Obter Dados Do Usuario
    [Arguments]    ${TIPO_USUARIO}
    ${json_texto}=    Get File    ${CURDIR}/../../data/massa_usuarios.json
    ${json_obj}=      Evaluate    json.loads('''${json_texto}''')    json
    ${usuario}=       Get From Dictionary    ${json_obj}    ${TIPO_USUARIO}
    RETURN            ${usuario}

Validar Mensagem De Erro
    [Arguments]    ${MENSAGEM_ESPERADA}
    # Captura o texto do alerta na tela e valida se ele contém a frase esperada
    Get Text       ${lbl_error_msg}    contains    ${MENSAGEM_ESPERADA}