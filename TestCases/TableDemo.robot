*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TableValidations
    Open Browser        https://testpages.herokuapp.com/styled/tag/table.html       chrome
    Maximize Browser Window
    
    ${rows} =       Get Element Count    xpath://*[@id="mytable"]/tbody/tr
    ${cols} =       Get Element Count    xpath://*[@id="mytable"]/tbody/tr[1]/th

    Log To Console    number of rows is ${rows}
    Log To Console    number of cols is ${cols}

    ${data} =       Get Text    xpath://*[@id="mytable"]/tbody/tr[5]/td[1]
    Log To Console    ${data}
    
    Table Column Should Contain    xpath://*[@id="mytable"]    2    Amount
    Table Row Should Contain    xpath://*[@id="mytable"]    3    Bob
    Table Cell Should Contain    xpath://*[@id="mytable"]     3    2    23
    Table Header Should Contain    xpath://*[@id="mytable"]     Name
