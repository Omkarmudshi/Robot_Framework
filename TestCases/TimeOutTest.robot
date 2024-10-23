*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
RegTest
    Open Browser  https://demowebshop.tricentis.com/register    chrome
    ${time}=    Get Selenium Timeout
    Log To Console    ${time}
    Wait Until Page Contains    Register    2    #here default timeout is 5 sec

    Select Radio Button    Gender    M
    Input Text    id:FirstName    Omkar
    Input Text    id:LastName    mudshi
    Input Text    id:Email    omkar@gmail.com

    ${time}=    Get Selenium Timeout
    Log To Console    ${time}
    Close Browser
*** Keywords ***
