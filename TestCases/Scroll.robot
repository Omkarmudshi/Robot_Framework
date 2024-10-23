*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
ScrollingTest
    Open Browser    https://www.amazon.in/    chrome
    Execute Javascript    window.scrollTo(0,1500)
    Sleep    1
    Scroll Element Into View    xpath://a[@id='nav-logo-sprites']
    Sleep    1
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #end of the page
    Sleep    1
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #Top of the page
    Sleep    1
#    Go To    https://www.flipkart.com/
#    Execute Javascript