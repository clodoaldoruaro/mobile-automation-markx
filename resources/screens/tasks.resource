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