*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ForLoop1
    FOR    ${i}    IN RANGE    1       10
    Log To Console    ${i}
    END

ForLoop2
    FOR    ${i}    IN    1 2 3 4 5 6 7 8
        Log    ${i}
    END

ForLoop3
    @{items}    Create List     1   2   3   4   5
    FOR    ${i}    IN    @{items}
        Log    ${i}
    END

ForLoop4
    FOR    ${i}    IN    john   david   smith   scott
        Log    ${i}
    END

ForLoop5
    @{nameslist}    Create List     john   david   smith   scott
    FOR    ${i}    IN    @{nameslist}
        Log    ${i}
    END
    
ForLoop5
    @{items}    Create List     1   2   3   4   5
    FOR    ${i}    IN    @{items}
        Log    ${i}
        Exit For Loop If    ${i}==3
    END


