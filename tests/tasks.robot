*** Settings ***
Documentation        Suite que realiza cadastro de tarefas

Resource    ../resources/base.resource

Test Setup        Inicia sessão
Test Teardown     Finaliza sessão

*** Test Cases ***
Deve poder cadastrar uma nova tarefa

    Realiza login
    Cadastra tarefa    Estudar automação de testes