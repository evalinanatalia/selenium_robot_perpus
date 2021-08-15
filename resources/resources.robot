*** Settings ***
Library    Selenium2Library    

*** Keywords ***
LaunchBrowser
    [Arguments]     ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window
    Set Selenium Implicit Wait   2  

    ${Title}    Get Title
    [Return]    ${Title}
		
ExitAllBrowsers
    Sleep    3
    Close All Browsers