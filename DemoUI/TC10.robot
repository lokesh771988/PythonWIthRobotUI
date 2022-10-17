*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
FrameTestCase
    Open Browser        https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html        chrome
    Maximize Browser Window
    Sleep    3
    Select Frame    name:packageListFrame
    Click Link    org.openqa.selenium.bidi
    Unselect Frame
    Sleep    2
    Select Frame    name:packageFrame
    Click Link    BiDi
    Unselect Frame
    Sleep    2
    Select Frame    name:classFrame
    Click Element    xpath:/html/body/header/nav/div[1]/div[2]/ul[1]/li[2]/a
    Unselect Frame