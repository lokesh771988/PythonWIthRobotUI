*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/resource.robot

*** Test Cases ***
UserDefindTest
    ${reuValue}=        OpenBrowerKey   https://www.google.com/     chrome
    Log To Console    ${reuValue}
    Maximize Browser Window
    Input Text    name:q    lokesh
    
    Sleep    2
    Close All Browsers
