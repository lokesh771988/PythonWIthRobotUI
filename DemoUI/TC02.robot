*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${browserName}      chrome


*** Test Cases ***
TC01Test
    Open Browser    ${url}     ${browserName}
    Maximize Browser Window
    ${"nameFIeld"}      Set Variable        name:q
    Element Should Be Visible    ${"nameFIeld"}
    Element Should Be Enabled    ${"nameFIeld"}
    Input Text    ${"nameFIeld"}    lokesh
    Sleep    2
    Clear Element Text    ${"nameFIeld"}
    Sleep    2
    Close Browser

*** Keywords ***

