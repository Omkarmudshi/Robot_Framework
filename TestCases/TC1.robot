*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.facebook.com/login/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
#    input text  id:email    test@gamil.com
#    input text  id:pass     test1234
#    click element   xpath://button[@id='loginbutton']

    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    input text  id:email    test@gamil.com
    input text  id:pass     test1234
    click element   xpath://button[@id='loginbutton']
