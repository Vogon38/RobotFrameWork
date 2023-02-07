*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup     OpenMyBrowser
Suite Teardown  CloseBrowsers
Test Template   InvalidLogin

*** Test Cases ***
RightUserEmptyPwd        admin@yourstore.com         ${EMPTY}
RightUserWrongPwd        admin@yourstore.com         asd
WrongUserRightPwd        adm@yourstore.com           admin
WrongUserEmptyPwd        adm@yourstore.com           ${EMPTY}
WrongUserWrongPwd        adm@yourstore.com           asd

*** Keywords ***
InvalidLogin
    [Arguments]     ${username}     ${password}
    InputUsername    ${username}
    InputPwd    ${password}
    ClickLoginButton
    ErrorMessageShouldBeVisible