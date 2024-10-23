*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
GetAllLinks
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    ${counts}=    Get Element Count    xpath://a
    Log To Console    ${counts}

    @{listitems}    Create List    
    FOR    ${i}    IN RANGE    1      ${counts}+1
        ${links}=     Get Text    xpath:(//a)[${i}]
        Log To Console    ${links}
    END