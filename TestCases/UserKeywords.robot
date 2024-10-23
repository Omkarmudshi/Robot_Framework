*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
UserTC1
    ${pagetitle}=    LaunchBrowser    ${url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    Input Text    userName    omkar
    Input Text    password    12345
    Click Element    xpath://input[@name='submit']
