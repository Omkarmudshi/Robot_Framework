*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    https://www.amazon.in/    chrome


    Open Browser    https://www.youtube.com/    chrome
    
#    Close Browser    #used for close one browser window
    Close All Browsers    #used for close all browser window