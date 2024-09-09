*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.amazon.in/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    title should be     Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in
    click link      xpath://a[@id='nav-link-accountList']
    ${"email"}  set variable    xpath://input[@id='ap_email']

#    element should be visible   ${"email"}
    element should not be visible   ${"email"}
    element should be enabled    ${"email"}

    input text  ${"email"}  omkar@gmail.com
    sleep   2
    clear element text  ${"email"}
    sleep   2
    close browser

*** Keywords ***
