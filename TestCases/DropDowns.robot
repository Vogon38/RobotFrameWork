*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demo.seleniumeasy.com/basic-select-dropdown-demo.html

*** Test Cases ***
HandlingDropDownsAndLists
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    
    Select From List By Label    select-demo     Sunday
    Sleep    3
    Select From List By Index    select-demo    3

    Select From List By Index    multi-select   4

    Close Browser