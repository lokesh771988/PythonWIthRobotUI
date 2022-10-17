*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demo.automationtesting.in/Register.html
${browserName}      chrome


*** Test Cases ***
TC01Test
    Open Browser    ${url}     ${browserName}
    Maximize Browser Window
    Sleep    2
    Select Radio Button    radiooptions    Male
    Sleep    2
    Select Checkbox    id:checkbox1
    Select Checkbox    id:checkbox2
    Sleep    2
    Unselect Checkbox    id:checkbox2
    Sleep    2
    Close Browser

*** Keywords ***

