*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    Open Browser   https://demoqa.com/alerts       chrome
    Click Element    xpath://*[@id="alertButton"]
    Sleep    3
#    Handle Alert        accept
#    Handle Alert        dismiss
#    Handle Alert        leave
    Alert Should Be Present     You clicked a button