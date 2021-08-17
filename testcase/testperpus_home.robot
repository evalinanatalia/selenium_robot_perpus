*** Setting ***
Library		Selenium2Library
Resource	../testcase/testperpus_login.robot

*** Variables ***
${Browser}		Chrome
${URL}			https://staging.perpusgkpigsm.com/
${language}     //*[@id="__BVID__34__BV_toggle_"]
${media_list}       //*[@id="__BVID__11__BV_toggle_"]
${media_doc}        //*[@id="__BVID__11"]/ul/li[1]
${forum}            //*[@id="navbar-toggle-collapse"]/ul[1]/a[2]
${profile_list}        //*[@id="__BVID__28__BV_toggle_"]
${profile-item}        //*[@id="__BVID__28"]/ul/li/a/a

*** Test Cases ***
Star Automation
    Login
    Home
    ExitAllBrowsers

*** Keywords ***
Login
    Set Screenshot Directory    ../screenshoot/
    StartLogin  ${URL}  ${Browser}
Home
    Click Element   ${media_list}
    Click Element   ${media_doc}
    Sleep   1
    Click Element   ${forum}
    Sleep   1
    Click Element   ${profile_list}
    Click Element   ${profile-item}

    Sleep   2
    # Click Element   ${language}
    # Click Element   //*[@id="__BVID__34"]/ul/li[1]/a



  



