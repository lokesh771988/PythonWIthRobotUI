*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${browserName}      chrome


*** Test Cases ***
TC01Test
    Open Browser        ${url}      ${browserName}
    Maximize Browser Window
    Sleep    2

    Open Browser        https://big.com/        chrome
    Maximize Browser Window
    Sleep    2

    #Close Browser
    Close All Browsers
