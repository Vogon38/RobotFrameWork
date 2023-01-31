*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
RegTest

    ${speed} =  Get Selenium Speed
    Log To Console    ${speed}

    Open Browser    https://demowebshop.tricentis.com/register      chrome
    Maximize Browser Window
    Set Selenium Speed    2 seconds
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email    eg@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn

    ${speed} =  Get Selenium Speed

    Log To Console    ${speed}