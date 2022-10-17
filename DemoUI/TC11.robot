*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TabbedTestCase
    Open Browser        https://big.com/      chrome
    Maximize Browser Window
    Sleep    2

    Open Browser        https://www.google.com/      chrome
    Maximize Browser Window
    Sleep    2

    Switch Browser    1
    ${firstTitle}=      Get Title
    Log To Console    ${firstTitle}
    Sleep    2
    Switch Browser    2
    ${secondTitle}=      Get Title
    Log To Console    ${secondTitle}
    #Click Element    xpath://*[@id="Tabbed"]/a/button
    #Sleep    2
    #Switch Window       title=Selenium
    #Click Element    xpath:/html/body/div/main/section[2]/div/div/div[1]/div/div[2]/div/a
    Sleep    2
    Close All Browsers