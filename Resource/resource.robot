*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
OpenBrowerKey
    [Arguments]     ${url}      ${browserName}
    Open Browser        ${url}     ${browserName}
    ${Title}        Get Title
    [Return]      ${Title}