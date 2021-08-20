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
${error_msg_username}	//*[@id="bv-modal-example___BV_modal_body_"]/div[2]/form/div[1]/p
${error_msg_password}	//*[@id="bv-modal-example___BV_modal_body_"]/div[2]/form/div[2]/p

*** Test Cases ***
Start Automation
	LaunchBrowser  ${URL}	${Browser}
	Login Wrong Username
	ExitAllBrowsers

*** Keywords ***
StartLogin
	[Arguments]     ${appUrl}    ${appBrowser}
	LaunchBrowser	${appUrl}    ${appBrowser}
	
	Click Element	${menu_login}
	Sleep	2
	Click Element	${popup}
	Input Text	${user_name}	Dikasan123
	Input Text	${password}		Dika123
	Click Element  ${cb_remember}
	
	Click Element	${btn_login}
	
	Sleep	3


Login Wrong Username
	Click Element	${menu_login}
	Sleep	2
	Click Element	${popup}

	#data incorrect username
	Input Text	${user_name}	Diikasan123
	Input Text	${password}		Dika123

	#data incorrect password
	# Input Text	${user_name}	Dikasan123
	# Input Text	${password}		Dika1234

	Click Element  ${cb_remember}
	
	Click Element	${btn_login}
	Sleep	1
	#check if username incorrect
	Element Should Be Visible	${error_msg_username}

	#check if password incorrect
	# Element Should Be Visible	${error_msg_password}
	
	Sleep	2

ExitBrowser
	ExitAllBrowsers
	