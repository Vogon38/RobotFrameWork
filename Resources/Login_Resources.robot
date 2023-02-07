*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${loginUrl}        https://admin-demo.nopcommerce.com
${browser}          chrome

*** Keywords ***
OpenMyBrowser
    Open Browser        ${loginUrl}        ${browser}
    Maximize Browser Window

CloseBrowsers
    Close All Browsers
    
OpenLoginPage
    Go To    ${LOGIN_URL}

InputUsername
    [Arguments]     ${username}
    Input Text    id:Email    ${username}
    
InputPwd
    [Arguments]     ${password}
    Input Text    id:Password    ${password}

ClickLoginButton
    Click Element    xpath://button[contains(text(),'Log in')]
    
ClickLogoutLink
    Click Link    Logout

ErrorMessageShouldBeVisible
    Page Should Contain    Login was unsuccessful

DashboardPageShouldBeVisible
    Page Should Contain    Dashboard


