*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Dropdown and Lists
       Open Browser    ${url}    ${browser}
#       Set Selenium Speed    1

       Select From List By Label    country    India
       Sleep    2
       Select From List By Index    country    4    #index starts from 0
       Sleep    2
       Select From List By Value    country    japan
       Sleep    2

       Close Browser
    
*** Keywords ***
