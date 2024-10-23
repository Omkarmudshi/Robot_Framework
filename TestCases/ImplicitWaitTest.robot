*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
RegTest
    Open Browser  https://demowebshop.tricentis.com/register    chrome
    ${implecittime}=    Get Selenium Implicit Wait
    Log To Console    ${implecittime}

    Set Selenium Implicit Wait    5

    Select Radio Button    Gender    M
    Input Text    id:FirstNamee    Omkar
    Input Text    id:LastName    mudshi
    Input Text    id:Email    omkar@gmail.com

    ${implecittime}=    Get Selenium Implicit Wait
    Log To Console    ${implecittime}
    Close Browser
*** Keywords ***
