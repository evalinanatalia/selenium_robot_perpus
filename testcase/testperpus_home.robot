*** Setting ***
Library		Selenium2Library
Resource	../testcase/testperpus_login.robot

*** Variables ***
${Browser}		Chrome
${URL}			https://staging.perpusgkpigsm.com/
${language_list}     //*[@id="__BVID__34__BV_toggle_"]
${language}         //*[@id="__BVID__34"]/ul/li[1]/a
${media_list}       //*[@id="__BVID__12__BV_toggle_"]
${media_doc}        //*[@id="__BVID__12"]/ul/li[1]/a
${media_foto}        //*[@id="__BVID__12"]/ul/li[2]/a
${media_vidio}        //*[@id="__BVID__12"]/ul/li[3]/a
${media_buku}        //*[@id="__BVID__12"]/ul/li[4]
${media_artikel}      //*[@id="__BVID__12"]/ul/li[5]
${forum}            //*[@id="navbar-toggle-collapse"]/ul[1]/a[2]
${profile_list}       //*[@id="__BVID__29__BV_toggle_"]
${profile_item}        //*[@id="__BVID__29"]/ul/li/a/a

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
    Click Element   ${media_list}
    Click Element   ${media_foto}
    Sleep   1
    Click Element   ${media_list}
    Click Element   ${media_vidio}
    Sleep   1
    Click Element   ${media_list}
    Click Element   ${media_buku}
    Sleep   2
    Click Element   ${media_list}
    Click Element   ${media_artikel}
    Sleep   2
    Click Element   ${forum}
    Sleep   2
    Click Element   ${profile_list}
    Sleep   2
    Click Element   ${profile_item}

    Sleep   2
    Click Element   ${language_list}
    Sleep   2
    Click Element   ${language}
    Sleep   2


  



