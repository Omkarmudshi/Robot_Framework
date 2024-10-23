*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestTable
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    ${countrows}=    Get Element Count    xpath://table[@name='BookTable']//tr
    Log To Console    ${countrows}
    ${countcol}=    Get Element Count    xpath://table[@name='BookTable']//tr[1]/th
    Log To Console    ${countcol}
    
    Get Text

    table