*** Setting ***
Library		Selenium2Library
Resource	../resources/resources.robot

*** Variables ***
${Browser}		Chrome
${URL}			https://staging.perpusgkpigsm.com/
${menu_login}	//*[@id="navbar-toggle-collapse"]/ul[2]/li/a
${user_name}	email
${popup}		//*[@id="bv-modal-example"]/div
${password}		password
${cb_remember}	//*[@id="bv-modal-example___BV_modal_body_"]/div[2]/form/div[3]/div/label
${btn_login}	//*[@id="bv-modal-example___BV_modal_body_"]/div[2]/form/div[3]/button/span



*** Test Cases ***
Start Automation 
	StartLogin
	ExitBrowser


*** Keywords ***
StartLogin
	Set ScreenShot Directory	../screenshoot/
	LaunchBrowser	${URL}	${Browser}
	
	Click Element	${menu_login}
	Sleep	3
	Click Element	${popup}
	Input Text	${user_name}	Dikasan123
	Input Text	${password}		Dika123
	Click Element  ${cb_remember}
	
	Click Element	${btn_login}
	
	Sleep	3
	
ExitBrowser
	ExitAllBrowsers