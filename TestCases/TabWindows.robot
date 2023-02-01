*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TestingTabWindowsChanges
    Open Browser        https://demo.automationtesting.in/Windows.html      chrome
    Maximize Browser Window

    Click Element    xpath://*[@id="Tabbed"]/a/button
    Switch Window   title=Selenium
    Click Element    xpath://*[@id="main_navbar"]/ul/li[5]/a/span
    Sleep    3
    Close All Browsers


