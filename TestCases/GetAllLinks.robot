*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
GetAllLinks
    Open Browser        https://developers.google.com/style/link-text       chrome
    Maximize Browser Window
    
    ${AllLinksCount} =      Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}

    @{LinkItems}    Create List     
    
    FOR    ${i}    IN RANGE     1   ${AllLinksCount}
        ${LinkText} =   Get Text    xpath:(//a)[${i}]
        Log    ${LinkText}
    END     
