*** Settings ***
Documentation    Suite que realiza login

Resource        ../resources/base.resource

Test Setup        Inicia sessão
Test Teardown     Finaliza sessão

*** Test Cases ***
Deve logar com sucesso

    Realiza login