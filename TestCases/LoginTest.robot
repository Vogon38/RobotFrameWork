*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot

*** Variables ***
${browser}      chrome
${siteUrl}      https://www.demoblaze.com
${user}         tutorial
${pwd}          tutorial

*** Test Cases ***
Login
    Open my browser    ${siteUrl}    ${browser}
    Click login in
    Enter username    ${user}
    Enter password    ${pwd}
    Click sign in
    Sleep    3  seconds
    Verify successful login
    Close my browser