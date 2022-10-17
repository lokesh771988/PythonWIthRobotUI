*** Settings ***
Library         SeleniumLibrary
Resource        ../Resource/Login_Resouce.robot
#Library    DataDriver       ../TestData/Login.csv
Library    DataDriver       file=../TestData/Login_page.xlsx     sheet_name=Sheet1

Suite Setup         open my browsers
Suite Teardown      close my browsers

Test Template           FailedLogin

*** Test Cases ***
Login Page  using  ${userName} ${passw}


*** Keywords ***
FailedLogin
    [Arguments]         ${username}         ${password}
    Press Keys   name:username   CTRL+a   BACKSPACE
    InputText for user    ${username}
    Press Keys   name:password   CTRL+a   BACKSPACE
    InputText for Pwd    ${password}
    click login button
    Sleep    2
    Message should be visible

