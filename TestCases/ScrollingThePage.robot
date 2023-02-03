*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser        https://www.countries-ofthe-world.com/flags-of-the-world.html       chrome
    Maximize Browser Window
#    Execute Javascript      window.scrollTo(0, 2500)
#    Scroll Element Into View    xpath://blob   # view until that poin
#    Execute Javascript      window.scrollTo(0, document.body.scrollHeight)     # end of the page
    Execute Javascript      window.scrollTo(0, -document.body.scroll)   # start of the page
