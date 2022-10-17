*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
WebTable
    Open Browser        https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Sleep    2
    Scroll Element Into View    xpath://*[@id="HTML1"]/div[1]/table
    Sleep    2
    # Count of rows
    ${rows}=        Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    Log To Console    ${rows}
    ${columns}=        Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr/td
    Log To Console    ${columns}
    ${headerColumns}=        Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr/th
    Log To Console    ${headerColumns}
    ${data}=        Get Text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[2]/td[1]
    Log To Console    ${data}
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    1    Master In Selenium
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Amit
    Table Header Should Contain    xpath://table[@name='BookTable']    Author
    Table Row Should Contain    xpath://table[@name='BookTable']    2    Learn Selenium
    Sleep    2
    Close All Browsers