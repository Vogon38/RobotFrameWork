*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    http://demowebshop.tricentis.com/register       chrome
    Maximize Browser Window

    Open Browser    http://automationpractice.com/index.php       chrome
    Maximize Browser Window

    Close All Browsers

