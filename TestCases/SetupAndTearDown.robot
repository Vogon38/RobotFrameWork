*** Settings ***

Suite Setup     Log To Console    Opening browser
Suite Teardown      Log To Console    Closing browser

Test Setup      Log To Console    Login to application
Test Teardown       Log To Console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    Log To Console    This is prepaid recharge testcase

TC2 Postpaid Recharge
    Log To Console    This is postpaid recharge testcase

TC3 Search
    Log To Console    This is search test case

TC4 Advanced Search
    Log To Console    This is advanced search test case