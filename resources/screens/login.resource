*** Settings ***
Documentation        Elementos e ações da tela de login

Library    AppiumLibrary

*** Variables ***
${API_IP}        192.168.0.112

*** Keywords ***
Realiza login

    Input Text        xpath=//*[@resource-id="apiIp"]        ${API_IP}
    Click Element     xpath=//*[@resource-id="signInButton"]
    Wait Until Page Contains    Minhas tarefas    5