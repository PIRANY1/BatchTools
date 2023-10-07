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

:msrewardsfarm

:pccrasher