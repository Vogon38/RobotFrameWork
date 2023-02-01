*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions
    # right click action
    Open Browser        http://swisnl.github.io/jQuery-contextMenu/demo.html        chrome
    Maximize Browser Window

    Open Context Menu   xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3

    # double click action
    Open Browser        https://doubleclicktest.com     chrome
    Maximize Browser Window
    Double Click Element    xpath://*[@id="click"]
    Sleep    3

    # drag and drop
    Go To    http://dhtmlgoodies.com/index.html?page=dragDrop
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Sleep    5

    Close Browser