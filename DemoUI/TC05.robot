*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm#
${browserName}      chrome


*** Test Cases ***
TC01Test
    Open Browser    ${url}     ${browserName}
    Maximize Browser Window
    Sleep    2
    Select From List By Label    name:selenium_commands      Browser Commands
    Sleep    2
    Select From List By Label    name:selenium_commands      Switch Commands
    Sleep    2
    Unselect From List By Label    name:selenium_commands      Browser Commands
    Sleep    2
    Close Browser

*** Keywords ***