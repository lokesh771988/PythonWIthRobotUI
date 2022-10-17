*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
BrowserTestCase
    Open Browser        https://www.google.com/         chrome
    Maximize Browser Window
    Sleep    2
    ${Loc}=     Get Location
    Log To Console    ${Loc}
    Sleep    2
    Go To    https://big.com/
    ${Loc1}=     Get Location
    Log To Console    ${Loc1}
    Sleep    2
    Go Back
    ${Loc2}=     Get Location
    Log To Console    ${Loc2}
    Sleep    2
    Close All Browsers