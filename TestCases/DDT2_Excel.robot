*** Settings ***
Library     SeleniumLibrary
Library     DataDriver  ../TestData/LoginData.csv
Resource    ../Resources/Login_Resources.robot

Suite Setup     OpenMyBrowser
Suite Teardown      CloseBrowsers
Test Template       InvalidLogin

*** Test Cases ***
LoginTestWithExcel using   ${username} and  ${password}

*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        InputUsername    ${username}
        InputPwd    ${password}
        ClickLoginButton
        ErrorMessageShouldBeVisible


