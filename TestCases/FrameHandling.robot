*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestFrame
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Select Frame    xpath://iframe[@id='frame-one796456169']    #used to select the frame so we can perform certain operation after that we have to unselect the frame so we can move to other frame or come to previous frame
    Input Text    id:RESULT_TextField-0    omakr
    Sleep    2
    Unselect Frame    #used to unselect the frame 

    Close Browser