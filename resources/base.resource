*** Settings ***
Documentation   Arquivo base

Library     AppiumLibrary
Library     libs/mongo.py

Resource    screens/login.resource
Resource    screens/tasks.resource

*** Keywords ***
Inicia sessão
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/apps/markx.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    
    Wait Until Page Contains        Endereço IP da Api        10

Finaliza sessão
    Capture Page Screenshot
    Close Application