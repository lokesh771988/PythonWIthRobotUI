*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${browserName}      chrome


*** Test Cases ***
TC01Test
    ${options}=    Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    Create WebDriver    Chrome    chrome_options=${options}
    Go To    ${url}
    Sleep    2
    Close Browser

*** Keywords ***