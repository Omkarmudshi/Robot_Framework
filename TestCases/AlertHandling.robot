*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestAlert
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Click Element    xpath://button[@id='alertBtn']
    Sleep    2
    Handle Alert    accept    #for selecting ok/yes/accept
    Sleep    1

#    Click Element    xpath://button[normalize-space()='Alert']
#    Sleep    2
#    Handle Alert    dismiss    #for selecting no/dismiss
#    Sleep    1
#
#    Click Element    xpath://button[normalize-space()='Alert']
#    Sleep    2
#    Handle Alert    leave    #for keeping on
#    Sleep    1

    Close Browser
    
