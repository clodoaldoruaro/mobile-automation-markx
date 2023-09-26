*** Settings ***
Documentation        Suite que realiza cadastro de tarefas

Resource    ../resources/base.resource

Test Setup        Inicia sessão
Test Teardown     Finaliza sessão

*** Test Cases ***
Deve poder cadastrar uma nova tarefa

    ${task}    Set Variable    Estudar Xpath
    Remove tarefa DB         ${task}

    Realiza login
    Cadastra tarefa          ${task}
    Deve existir a tarefa    ${task}

Deve poder remover uma tarefa
    [Tags]    remove
        
    ${task}    Set Variable    Comprar refrigerante
    Remove tarefa DB         ${task}
    
    Realiza login
    
    Cadastra tarefa          ${task}
    Deve existir a tarefa    ${task}

    Remove a tareva                      ${task}
    Wait Until Page Does Not Contain     ${task}
    
Deve poder concluir uma tarefa
    [Tags]    concluir
        
    ${task}    Set Variable    Comprar ferramentas
    Remove tarefa DB         ${task}
    
    Realiza login
    
    Cadastra tarefa          ${task}
    Deve existir a tarefa    ${task}

    Concluir a tarefa                    ${task}
    Tarefa deve estar concluida          ${task}