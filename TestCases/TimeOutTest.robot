*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
RegTest
    Open Browser    https://demowebshop.tricentis.com/register      chrome
    Maximize Browser Window
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Registration


    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email    eg@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn
