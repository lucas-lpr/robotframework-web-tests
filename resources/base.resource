*** Settings ***
Library      Browser
Variables    ../config/env_dev.py
Resource     pages/login_page.resource

*** Keywords ***
Iniciar Sessao
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page       ${URL_BASE}

Encerrar Sessao
    Take Screenshot
    Close Browser
