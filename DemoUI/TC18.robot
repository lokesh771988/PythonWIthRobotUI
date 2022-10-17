*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LinksTest
    Open Browser        https://demo.guru99.com/test/newtours/      chrome
    Maximize Browser Window
    Sleep    2
    ${count}=       Get Element Count    xpath://a
    Log To Console    ${count}

    FOR    ${element}    IN RANGE   1    ${count}
        ${linkText}=        Get Text    xpath:(//a)[${element}]
        Log To Console    ${linkText}

    END