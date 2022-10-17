*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
CaptchrTest
    Open Browser        https://www.google.com/    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name:q    lokesh
    Sleep    2
    Capture Element Screenshot    name:q       element.png
    Capture Page Screenshot         page.png