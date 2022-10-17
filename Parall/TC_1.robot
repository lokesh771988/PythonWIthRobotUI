*** Settings ***

Suite Setup     Log To Console    Opening brower
Suite Teardown      Log To Console    closing brower

Test Setup          Log To Console    LoginPage
Test Teardown           Log To Console    LogoutPage

*** Test Cases ***
TC01
    Log To Console    TC01 Test Case Execute
    
TC02
    Log To Console    TC02 Test Case Execute
    
TC03
    Log To Console    TC03 Test Case Execute
    