*** Settings ***

*** Test Cases ***
TC1 User Registration
    [Tags]  sanity
    Log To Console    This is user reg test
    Log To Console    User reg test is over

TC2 Login
    [Tags]  regression
    Log To Console    This is login test
    Log To Console    Login test is over

TC3 Change User Settings
    [Tags]  regression
    Log To Console    This is changing user settings test
    Log To Console    Changing user settings test is over
    
TC4 Logout
    [Tags]  sanity
    Log To Console    This is logout test
    Log To Console    Logout test is over