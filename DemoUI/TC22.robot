*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${browserName}      headlesschrome


*** Test Cases ***
TC01Test
    Open Browser    ${url}     ${browserName}
    #enterValuesField
    Sleep    2
    Close Browser

*** Keywords ***
enterValuesField
    Input Text    name:q    lokesh
    Click Button    name:btnK