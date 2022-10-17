*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}      chrome
${mess}     Invalid credentials

*** Keywords ***
open my browsers
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Sleep    2

close my browsers
    Close All Browsers

InputText for user
    [Arguments]     ${userName}
    Input Text    name:username    ${userName}
    
InputText for Pwd
    [Arguments]     ${pwd}
    Input Password    name:password    ${pwd}

click login button
    Click Element    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    
Error message should be visible
    Page Should Contain    Invalid credentials

Title should be visible
    Page Should Contain    Employee List

Message should be visible
       ${textValue}=        Run Keyword And Return Status    Element Should Be Visible    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/p
       IF    ${textValue} == True
           Error message should be visible
       ELSE
            Title should be visible
       END
