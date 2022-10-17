*** Settings ***
Library         SeleniumLibrary
Variables       ../Objects/Login_object.py

*** Keywords ***
OpenMyBrowser
    [Arguments]         ${url}      ${browser}
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Sleep    2
    
CloseBrowses
    Close All Browsers
    
EnterName
    [Arguments]         ${username}
    Input Text    ${txt_name}    ${username}

EnterPassword
    [Arguments]         ${password}
    Input Password    ${txt_password}    ${password}
    
ClickLogin
       Click Element    ${btn_login}