*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TestingFrames
    Open Browser        https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html       chrome
    Maximize Browser Window

    Select Frame    packageListFrame        # id name xpath
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    3

    Select Frame    packageFrame         # id name xpath
    Click Link    Alert
    Unselect Frame
    Sleep    3

    Select Frame    classFrame         # id name xpath
    Click Link    Index
    Unselect Frame

    Close Browser