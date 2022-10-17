*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm#
${browserName}      chrome


*** Test Cases ***
TC01Test
    Open Browser        ${url}      ${browserName}
    Maximize Browser Window
    Set Selenium Timeout    5
    Wait Until Page Contains    Selenium - Automation Practice Form1
    Set Selenium Implicit Wait    3
    Select From List By Label    name:selenium_commands      Browser Commands
    
    Select From List By Label    name:selenium_commands      Switch Commands
    
    Unselect From List By Label    name:selenium_commands      Browser Commands
    
    Close Browser
