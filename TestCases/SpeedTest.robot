*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
RegTest
    Open Browser  https://demowebshop.tricentis.com/register    chrome
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Set Selenium Speed    1
    Select Radio Button       Gender    M
    Input Text    id:FirstName    Omkar
    Input Text    id:LastName    mudshi
    Input Text    id:Email    omkar@gmail.com
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Close Browser
*** Keywords ***
