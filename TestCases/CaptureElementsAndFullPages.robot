*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Capture
    Open Browser        https://www.orangehrm.com/contact-sales/      chrome
    Maximize Browser Window
    Input Text    id:Form_getForm_FullName    John Doe
    Input Text    id:Form_getForm_JobTitle    QA

    Capture Element Screenshot    xpath:/html/body/nav/div/a/img      ScreenShots/Logo.png
    Capture Page Screenshot     ScreenShots/FullPage.png