*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
AlertTestCase
    Open Browser        https://testautomationpractice.blogspot.com/        chrome
    Maximize Browser Window
    Sleep    2
    Click Button    xpath://*[@id="HTML9"]/div[1]/button
    Sleep    2
    #Handle Alert    Accept
    #Handle Alert    Dismiss
    #Handle Alert    Leave
    Alert Should Be Present     Press a button!

    Sleep    2
    Close Browser