*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${siteUrl}      ${browser}
    Open Browser    ${siteUrl}      ${browser}
    Maximize Browser Window

Click login in
    Click Element    ${loginIn}

Enter username
    [Arguments]     ${username}
    Input Text    ${txt_loginUsername}    ${username}

Enter password
    [Arguments]     ${password}
    Input Text    ${txt_loginPassword}    ${password}
    
Click sign in
    Click Button    ${btn_signIn}

Verify successful login
    ${txt_nameofuser} =     Get Text    ${nameofuser}
    Should Be Equal As Strings    ${txt_nameofuser}     Welcome tutorial

Close my browser
    Close All Browsers