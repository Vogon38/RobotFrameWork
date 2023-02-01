*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
SwitchToMultipleBrowsers
    Open Browser        https://www.google.com      chrome
    Maximize Browser Window
    
    Sleep    3

    Open Browser        https://www.bing.com        chrome
    Maximize Browser Window

    Switch Browser    1
    ${title} =      get title
    Log To Console    ${title}

    Switch Browser    2
    ${title2} =      get title
    Log To Console    ${title2}

    Sleep    3
    Close All Browsers