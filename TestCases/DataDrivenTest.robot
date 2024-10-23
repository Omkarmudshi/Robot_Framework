*** Settings ***
Library    SeleniumLibrary
Resource    Resources/Login_resources.robot
Suite Setup        Open My Browser
Suite Teardown        Close Browsers
Test Template           Invalid Login Test    #the repeating test we must put in test template section

*** Test Cases ***                username        password
Right user and empty password    demoadmin        ${EMPTY}
Right user wrong password        demoadmin        xyz
#Right user right password       demoadmin       demopass
wrong user right password        demo12         demopass
wrong user wrong password        demo123            12345
wrong user empty password        demoad          ${EMPTY}
*** Keywords ***
Invalid Login Test
    [Arguments]    ${username}    ${password}
    Input Username        ${username}
    Input Pass        ${password}
    Click Login Btn
    Error Msg Should Be Visible
    Sleep    2