*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/
*** Test Cases ***
Testing Radio Button and Check Boxes
    Open Browser    ${url}    ${browser}
    Set Selenium Speed    1    #here we have set the time for every operations

    #selecting radio btn
    #for that pass name and value of the radio btn
    Select Radio Button    gender    male


    #selecting check boxes
    #for that pass values of the check box
    Select Checkbox    sunday
    Select Checkbox    monday
    Unselect Checkbox  sunday
    
    Close Browser

*** Keywords ***
