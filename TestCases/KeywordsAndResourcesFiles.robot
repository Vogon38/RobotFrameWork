*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${url}      http://www.newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle} =      launchBrowser   ${url}      ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}
    Input Text    name:userName    mercury
    Input Text    name:password    mercury



