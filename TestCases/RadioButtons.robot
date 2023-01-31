*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_radiobutton}      https://demo.seleniumeasy.com/basic-radiobutton-demo.html
${url_checkbox}     https://demo.seleniumeasy.com/basic-checkbox-demo.html

*** Test Cases ***
TestingRadioButtonsAndCheckBoxes
    radioButton
    checkBox

*** Keywords ***
radioButton
    Open Browser    ${url_radiobutton}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds

    Select Radio Button    optradio   Female
    Select Radio Button    ageGroup    5 - 15

    Close Browser

checkBox
    Open Browser    ${url_checkbox}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds
    
    Select Checkbox    xpath:(//input[@value=''])[2]
    Unselect Checkbox    xpath:(//input[@value=''])[2]

    Close Browser

