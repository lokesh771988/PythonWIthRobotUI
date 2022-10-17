*** Settings ***
Library         SeleniumLibrary
Resource        ../KeyWords/login_key.robot

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}          chrome

*** Test Cases ***
LoginHRM
    OpenMyBrowser      ${url}       ${browser}
    EnterName       Admin
    EnterPassword    admin123
    ClickLogin
    Sleep    2
    CloseBrowses