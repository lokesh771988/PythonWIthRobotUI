*** Settings ***
Library         SeleniumLibrary
Resource        ../Resource/Login_Resouce.robot

Suite Setup         open my browsers
Suite Teardown      close my browsers

Test Template           FailedLogin

*** Test Cases ***          ${Username}         ${pwd}
valid user invalid pwd      Admin           admin
Valid user passw            Admin           admin123


*** Keywords ***
FailedLogin
    [Arguments]         ${Username}         ${pwd}
    Press Keys   name:username   CTRL+a   BACKSPACE
    InputText for user    ${userName}
    Press Keys   name:password   CTRL+a   BACKSPACE
    InputText for Pwd    ${pwd}
    click login button
    Sleep    2
    Message should be visible

