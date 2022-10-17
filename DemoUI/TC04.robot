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
    Select From List By Label    id:Skills      Adobe Photoshop
    Sleep    2
    Select From List By Value    id:Skills      Android
    Sleep    2
    Select From List By Index    id:Skills      1
    Sleep    2
    Close Browser

*** Keywords ***