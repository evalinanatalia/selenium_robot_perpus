*** Setting ***
Library		Selenium2Library
Resource	../resources/resources.robot

*** Variables ***
${Browser}		Chrome
${URL}			https://staging.perpusgkpigsm.com/
${menu_register}	//*[@id="navbar-toggle-collapse"]/ul[2]/a
${name}			//body/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]
${full_name}	//body/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]
${password}		//body/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/div[3]/div[1]/div[2]/input[1]
${re_password}	//body/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/div[4]/div[1]/div[2]/input[1]
${btn_register}	//body/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/div[5]/button[1]



*** Test Cases ***
Start Automation 
	StartLogin
	ExitAllBrowsers


*** Keywords ***
StartRegister
	Set ScreenShot Directory	../screenshoot/
	LaunchBrowser	${URL}	${Browser}
	
	Click Element	${menu_register}
	Sleep	3
	
	Input Text	${name}			Dikasan1
	Input Text	${full_name}	Dikasanri kadi
	Input Text	${password}		Dika123
	Input Text	${re_password}	Dika123
	
	
	Click Element	${btn_register}
	Sleep	1
	Alert Should Be Present	Berhasil mendaftar.
	#Handle Alert	ACCEPT
	
ExitBrowser
	ExitAllBrowsers