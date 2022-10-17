*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MOuseTest
    Open Browser        https://testautomationpractice.blogspot.com/        chrome
    Maximize Browser Window
    Sleep    2
    #Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    #Sleep    2
    #Open Context Menu    xpath://*[@id="HTML10"]/div[1]/button
    Go To    https://www.globalsqa.com/demo-site/draganddrop/#Accepted%20Elements
    Sleep    2
    Select Frame    xpath://*[@id="post-2669"]/div[2]/div/div/div[1]/p/iframe
    Sleep    2
    Drag And Drop    xpath://*[@id="gallery"]/li[1]/img    id:trash
    Sleep    2
    Close All Browsers