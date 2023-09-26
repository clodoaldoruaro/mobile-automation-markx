*** Settings ***
Documentation        Elementos e ações da tela de tarefas

Library    AppiumLibrary

*** Variables ***
${input_new_task}    xpath=//*[contains(@text, "Informe a sua nova tarefa")]
${button_create}     xpath=//*[@resource-id="createTask"]

*** Keywords ***
Cadastra tarefa
    [Arguments]        ${task_name}
    
    Wait Until Element Is Visible    ${input_new_task}    5

    Input Text        ${input_new_task}        ${task_name}
    Click Element     ${button_create}

Deve existir a tarefa
    [Arguments]        ${task_name}

    Wait Until Element Is Visible    xpath=//*[@resource-id="taskText"][@text="${task_name}"]    5

Remove a tareva
    [Arguments]    ${task_name}

    Click Element    xpath=//*[@text="${task_name}"]/../..//*[@resource-id="removeTask"]

    ${button}        Set Variable    xpath=//android.widget.Button[@text="SIM"]

    Wait Until Element Is Visible     ${button}     5
    Click Element    ${button}

Concluir a tarefa
    [Arguments]    ${task_name}

    Click Element    xpath=//*[@text="${task_name}"]/..

Tarefa deve estar concluida
    [Arguments]    ${task_name}
    
    Wait Until Element Is Visible     xpath=//*[@text="${task_name}"]/..//android.widget.ImageView     5