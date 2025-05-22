rem sourse code written by: dxn
rem sourse code updated April 2024 by: dxn
rem sourse code ready May 2025 by: dxn
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
@Echo off
chcp 65001 >nul
title Athena
mode con lines=24 cols=80
:loading1
cls
echo.
echo                           *         *      *         *
ping localhost -n 1 -w 1.0>nul
echo                       ***          **********          ***
ping localhost -n 1 -w 1.0>nul
echo                    *****           **********           *****
ping localhost -n 1 -w 1.0>nul
echo                  *******           *[40;31m*[40;37m******[40;31m*[40;37m*           *******
ping localhost -n 1 -w 1.0>nul
echo                **********         ************         **********
ping localhost -n 1 -w 1.0>nul
echo               ****************************************************
ping localhost -n 1 -w 1.0>nul
echo              ******************************************************
ping localhost -n 1 -w 1.0>nul
echo             ********************************************************
ping localhost -n 1 -w 1.0>nul
echo             ********************************************************
ping localhost -n 1 -w 1.0>nul
echo             ********************************************************
ping localhost -n 1 -w 1.0>nul
echo               ******************************************************
ping localhost -n 1 -w 1.0>nul
echo                ********      ************************      ********
ping localhost -n 1 -w 1.0>nul
echo                 *******       *     *********      *       *******
ping localhost -n 1 -w 1.0>nul
echo                   ******             *******              ******
ping localhost -n 1 -w 1.0>nul
echo                     *****             *****              *****
ping localhost -n 1 -w 1.0>nul
echo                       ***              ***              ***
ping localhost -n 1 -w 1.0>nul
echo                          **             *              **
echo.
ping localhost -n 2 -w 1.0>nul
goto launcher1








:launcher1
cls
echo.
echo [40;37m      ________   _________  ___   ___   ______   ___   __    ________
echo      /_______/\ /________/\/__/\ /__/\ /_____/\ /__/\ /__/\ /_______/\
echo      \::: _  \ \\__.::.__\/\::\ \\  \ \\::::_\/_\::\_\\  \ \\::: _  \ \
echo       \::(_)  \ \  \::\ \   \::\/_\ .\ \\:\/___/\\:. `-\  \ \\::(_)  \ \
echo        \:: __  \ \  \::\ \   \:: ___::\ \\::___\/_\:. _    \ \\:: __  \ \
echo         \:.\ \  \ \  \::\ \   \: \ \\::\ \\:\____/\\. \`-\  \ \\:.\ \  \ \
echo          \__\/\__\/   \__\/    \__\/ \::\/ \_____\/ \__\/ \__\/ \__\/\__\/
echo.
echo.
echo                                    [[40;31moptions[40;37m]
echo                             ╔═════════════════════╗
echo                             ║ [[40;31m1[40;37m]: Options]       ║
echo                             ║ [[40;31m2[40;37m]: Game Launcher] ║
echo                             ║ [[40;31m3[40;37m]: All Commands]  ║
echo                             ║ [[40;31m4[40;37m]: Patch Notes]   ║
echo                             ║ [[40;31m5[40;37m]: Settings]      ║
echo                             ║ [[40;31m6[40;37m]: Exit]          ║
echo                             ╚═════════════════════╝
echo.
echo.
echo.
echo ╔═[[40;31mATHENA[40;37m]
set /p launcher1=╚═══➤ [40;31m
if %launcher1% == 1 goto more1
if %launcher1% == 2 goto steamlauncher1
if %launcher1% == 3 goto allcommands
if %launcher1% == 4 goto patch1
if %launcher1% == 5 goto settings1
if %launcher1% == 6 goto exit1
if %launcher1% == exit goto exit1
if %launcher1% == cls goto clear1
if %launcher1% == ? goto help123
if %launcher1% == 007 goto bond1
if %launcher1% == 999 goto 999
if %launcher1% == r goto r11
echo.
echo [40;37mPlease pick from [40;32m1-8[40;37m.
ping localhost -n 2 -w 1.0>nul
goto launcher1







:r11
start athena.bat
exit
echo [40;37m
goto loading1








:clear1
echo.
echo [40;37m[[40;32mclearing screen![40;37m]
ping localhost -n 2 -w 1.0>nul
cls
goto launcher1







:system1
echo.
echo [40;37mAre you sure you want to run system check? (y/n)
echo.
echo ╔═[[40;31mSystem check[40;37m]
set /p system1= ╚═══➤ [40;31m
if %system1% == y goto system2
if %system1% == n goto launcher1
echo.
echo [40;37mplease type either "[40;34my[40;37m" or "[40;34mn[40;37m"
ping localhost -n 5 -w 1.0>nul
goto system1








:system2
echo.
echo [40;37mRunning system check...
ping localhost -n 3 -w 1.0>nul
cls
echo [40;37m╔═══════════════════════╗
ECHO ║ [Windows information] ║
echo ╚═══════════════════════╝
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
systeminfo | findstr /c:"System Model"
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"System Manufacturer"
echo ╔═════════════════╗
ECHO ║ [Hardware Info] ║
echo ╚═════════════════╝
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
echo.
echo Press [40;32mEnter[40;37m to retrun.
PAUSE>nul
goto launcher1








:settings1
echo.
echo [40;37m
echo                                    [[40;31mSettings[40;37m]
echo                  ╔═════════════════════╗╔════════════════════╗
echo                  ║* [[40;31m1[40;37m]: Restart]      ║║ * [[40;31m2[40;37m]: Update]     ║
echo                  ║* [[40;31m3[40;37m]: System Check] ║║ * [[40;31m4[40;37m]: Go Back]    ║
echo                  ╚═════════════════════╝╚════════════════════╝
echo.
echo ╔═[[40;31mSettings[40;37m]
set /p settings1= ╚═══➤ [40;31m
if %settings1% == 1 goto r11
if %settings1% == 2 goto update1
if %settings1% == 3 goto system1
if %settings1% == 4 goto launcher1
if %settings1% == exit goto exit1
echo.
echo [40;37mPlease pick an option between [40;32m1-4[40;37m.
ping localhost -n 4 -w 1.0>nul
goto settings1








:allcommands
echo.
echo                       [40;37m══════════════════════════════════
echo                              ╔═══════════════════╗
echo                              ║ -  [40;31mALL OPTIONS[40;37m  - ║
echo                              ╚═══════════════════╝
echo                      ╔══════════════════════════════════╗
echo                      ║* [[40;31m1[40;37m]: Options                    ║
echo                      ║* [[40;31m2[40;37m]: Game Launcher              ║
echo                      ║* [[40;31m3[40;37m]: All Commands               ║
echo                      ║* [[40;31m4[40;37m]: Patch Notes                ║
echo                      ║* [[40;31m5[40;37m]: Settings                   ║
echo                      ║* [[40;31m6[40;37m/[40;31mexit[40;37m]: Exit                  ║
echo                      ║* [[40;31mcls[40;37m]: to clear screen          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ╚══════════════════════════════════╝
pause>nul
goto launcher1







:more1
cls
echo [40;37m 
echo.
echo                                    [[40;31mOptions[40;37m]
echo                       ╔═════════════════════════════════╗
echo                       ║* [[40;31m1[40;37m]: Pc                        ║
echo                       ║* [[40;31m2[40;37m]: Google Search             ║
echo                       ║* [[40;31m3[40;37m]: Date And Time             ║
echo                       ║* [[40;31m4[40;37m]: View Netstat              ║
echo                       ║* [[40;31m5[40;37m]: Timer And Stop Watch      ║
echo                       ║* [[40;31m6[40;37m]: Clean Recycle Bin         ║
echo                       ║* [[40;31m7[40;37m]: Restart to BIOS/UEFI      ║
echo                       ║* [[40;31m0[40;37m]: To Go Back                ║
echo                       ╚═════════════════════════════════╝
echo.
echo ╔═[[40;31mOptions[40;37m]
set /p more1= ╚═══➤ [40;31m
if %more1% == 1 goto pc1
if %more1% == 2 goto google1
if %more1% == 3 goto dandt1
if %more1% == 4 goto netstat1
if %more1% == 5 goto timing
if %more1% == 6 goto cleaner1
if %more1% == 7 goto bios_restart
if %more1% == 0 goto launcher1
if %more1% == back goto launcher1
if %more1% == exit goto exit1
echo.
echo [40;37mPlease pick an option between [40;32m1-7[40;37m.
ping localhost -n 4 -w 1.0>nul
goto more1








:pc1
cls
echo. [40;33m                          ________  ________
echo  [40;33m                         ^|\   __  \^|\   ____\
echo  [40;33m                         \ \  \^|\  \ \  \___^|
echo  [40;33m                          \ \   ____\ \  \
echo  [40;33m                           \ \  \___^|\ \  \____
echo  [40;33m                            \ \__\    \ \_______\
echo  [40;33m                             \^|__^|     \^|_______^| [40;37m
echo.
echo.
echo                             ╔════════════════════╗
echo                             ║* [[40;31m1[40;37m] Pc Shut Down  ║
echo                             ║* [[40;31m2[40;37m] Pc Restart    ║
echo                             ║* [[40;31m3[40;37m] Pc Sleep      ║
echo                             ║* [[40;31m4[40;37m] Go Back       ║
echo                             ╚════════════════════╝
echo.
echo ╔═[[40;33mPC[40;37m]
set /p pc1= ╚═══➤ [40;31m
if %pc1% == 1 goto shutdown1
if %pc1% == 2 goto restart1
if %pc1% == 3 goto sleep1
if %pc1% == 4 goto more1
if %pc1% == back goto more1
if %pc1% == exit goto exit1
echo.
echo [40;37mPlease pick an option between [40;32m1-5[40;37m.
ping localhost -n 4 -w 1.0>nul
goto pc1








:shutdown1
echo.
echo [40;37mAre you sure you want to [40;31mshut down your pc[40;37m? (y/n)
echo.
echo ╔═[[40;31mpc shut down[40;37m]
set /p shutdown1= ╚═══➤ [40;31m
if %shutdown1% == y goto shutdown2
if %shutdown1% == n goto launcher1
echo [40;37mplease type either "[40;34my[40;37m" or "[40;34mn[40;37m"
ping localhost -n 5 -w 1.0>nul
goto shutdown1








:shutdown2
echo.
echo [40;37m[[40;31mwarning[40;37m] [shutting down pc in 5 seconds]
echo.
ping localhost -n 5 -w 1.0>nul
SHUTDOWN /p
goto launcher1








:restart1
echo.
echo [40;37mAre you sure you want to [40;31mrestart your pc[40;37m? (y/n)
echo.
echo ╔═[[40;31mpc restart[40;37m]
set /p restart1= ╚═══➤ [40;31m
if %restart1% == y goto restart2
if %restart1% == n goto launcher1
echo [40;37mplease type either "[40;34my[40;37m" or "[40;34mn[40;37m"
ping localhost -n 5 -w 1.0>nul
goto restart1








:restart2
echo.
echo [40;37m[[40;31mwarning[40;37m] [restarting pc in 5 seconds]
echo.
ping localhost -n 5 -w 1.0>nul
SHUTDOWN -r
goto launcher1








:sleep1
echo.
echo [40;37mAre you sure you want to [40;31msleep your pc[40;37m? (y/n)
echo.
echo ╔═[[40;31mpc sleep[40;37m]
set /p sleep1= ╚═══➤ [40;31m
if %sleep1% == y goto sleep2
if %sleep1% == n goto launcher1
echo [40;37mplease type either "[40;34my[40;37m" or "[40;34mn[40;37m"
ping localhost -n 5 -w 1.0>nul
goto sleep1








:sleep2
echo.
echo [40;37m[[40;31mwarning[40;37m] [sleeping pc in 5 seconds]
echo.
ping localhost -n 5 -w 1.0>nul
SHUTDOWN /h
goto launcher1








:google1
echo.
echo [40;37mAre you sure you want to start [40;37m[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m? (y/n)
echo.
echo ╔═[40;37m[[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m]
set /p google1= ╚═══➤ [40;31m
if %google1% == y goto google2
if %google1% == n goto more1
echo [40;37mplease type either "[40;34my[40;37m" or "[40;34mn[40;37m"
ping localhost -n 5 -w 1.0>nul
goto google1








:google2
cls
echo.
echo                [40;34m  ▄████ [40;31m ▒█████  [40;33m ▒█████  [40;34m  ▄████ [40;32m ██▓  [40;31m  ▓█████
echo                [40;34m ██▒ ▀█▒[40;31m▒██▒  ██▒[40;33m▒██▒  ██▒[40;34m ██▒ ▀█▒[40;32m▓██▒  [40;31m  ▓█   ▀
echo                [40;34m▒██░▄▄▄░[40;31m▒██░  ██▒[40;33m▒██░  ██▒[40;34m▒██░▄▄▄░[40;32m▒██░  [40;31m  ▒███
echo                [40;34m░▓█  ██▓[40;31m▒██   ██░[40;33m▒██   ██░[40;34m░▓█  ██▓[40;32m▒██░  [40;31m  ▒▓█  ▄
echo                [40;34m░▒▓███▀▒[40;31m░ ████▓▒░[40;33m░ ████▓▒░[40;34m░▒▓███▀▒[40;32m░██████[40;31m▒░▒████▒
echo                [40;34m ░▒   ▒ [40;31m░ ▒░▒░▒░ [40;33m░ ▒░▒░▒░ [40;34m ░▒   ▒ [40;32m░ ▒░▓  [40;31m░░░ ▒░ ░
echo                [40;34m  ░   ░ [40;31m  ░ ▒ ▒░ [40;33m  ░ ▒ ▒░ [40;34m  ░   ░ [40;32m░ ░ ▒  [40;31m░ ░ ░  ░
echo                [40;34m░ ░   ░ [40;31m░ ░ ░ ▒  [40;33m░ ░ ░ ▒  [40;34m░ ░   ░ [40;32m  ░ ░  [40;31m    ░
echo                [40;34m      ░ [40;31m    ░ ░  [40;33m    ░ ░  [40;34m      ░ [40;32m    ░  [40;31m░   ░  ░
echo.
echo             [40;37m   ╔══════════════════════════════════════════════╗
echo                ║* [simply type below what you want to search] ║
echo                ╚══════════════════════════════════════════════╝
echo.
echo ╔═[40;37m[[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m]
set /p  google1= ╚═══➤ [40;31m
if %google1% == back goto more1
start https://www.google.co.uk/search?q="%google1%"
echo.
echo [40;37msearching google for "[40;32m%google1%[40;37m"...
ping localhost -n 5 -w 1.0>nul
goto launcher1








:dandt1
echo. [40;37m
for /f "tokens=* usebackq" %%A in (`tzutil /g`) do (
    set "zone=%%A"
)
cls
echo.
echo  TimeZone - [[40;32m%zone%[40;37m]
echo.
echo                           ╔═════════════════════════════╗
echo                           ║                             ║
echo                           ║    Time - [[40;33m%time%[40;37m]     ║
echo                           ║                             ║
echo                           ║    Date - [[40;33m%date%[40;37m]      ║
echo                           ║                             ║
echo                           ╚═════════════════════════════╝
echo                           ╔═════════════════════════════╗
echo                           ║    Press [40;32menter[40;37m to return    ║
echo                           ╚═════════════════════════════╝
echo.
pause>nul
goto launcher1



:timing
cls [40;37m
set /a "sec=0" && set /a "min=0" && set /a "hour=0" && set /a "days=0" && set /a "timer=60"
echo.
echo.  
echo                        [40;37m [[40;32mBETA[40;37m]
echo [40;37m                        ╔═════════════════════════════╗
echo                         ║* [[40;31m1[40;37m]: Stop Watch            ║
echo                         ║* [[40;31m2[40;37m]: Timer                 ║
echo                         ║* [[40;31m3[40;37m]: Go back               ║
echo                         ╚═════════════════════════════╝
echo.
echo.
echo ╔═[[40;31mTimer[40;37m]
set /p timings= ╚═══➤ [40;31m
if "%timings%"=="1" goto stop_watch
if "%timings%"=="2" goto countdown
if "%timings%"=="3" goto more1
goto timing
:stop_watch
REM Starts the stop watch
cls
set /a "sec+=1"
if "%sec%"=="60" set /a "min+=1" & set /a "sec=0"
if "%min%"=="60" set /a "hour+=1" & set /a "min=0" & set /a "sec=0"
if "%hour%"=="24" set /a "days+=1" & set /a "hour=0" & set /a "min=0" & set /a "sec=0"
echo. 
echo                         [40;37m       ╔══════════════╗
echo                                ║ Elapsed time ║
echo                                ╚══════════════╝
echo                         ╔═════════════════════════════╗
echo                         ║         [40;31m%days%[40;37m days              ║
echo                         ║         [40;31m%hour%[40;37m hours             ║
echo                         ║         [40;31m%min%[40;37m minutes           ║
echo                         ║         [40;31m%sec%[40;37m seconds          ║
echo                         ╚═════════════════════════════╝
echo.
timeout /t 1 /nobreak >nul
goto stop_watch
:countdown
REM Timer menu
cls [40;37m
echo 1 Set custom timer length(must be in seconds, i.e.7200=2 hours)
echo 2 Start the timer
echo Current Timer Length: %timer% seconds
echo Type Back to go back
set /p timermain=
if "%timermain%"=="1" goto timer_length_set
if "%timermain%"=="2" goto countdown_real
if /i "%timermain%"=="back" goto timing
if /i "%timermain%"=="leave" goto launcher1
if /i "%timermain%"=="exit" goto exiter
goto countdown
:timer_length_set
REM Menu to let the user specify how long the timer should be in seconds
echo How long would you like the timer to be? (In seconds)
echo Type Back to go back
set /p timer=
if /i "%timer%"=="back" goto countdown
if /i "%timer%"=="leave" goto main
if /i "%timer%"=="exit" goto exiter
goto countdown
:countdown_real
REM Starts the countdown timer
echo Countdown: %hour%:%min%:%sec%
set /a hour=%timer%/3600
set /a min=(%timer%%%3600)/60
set /a sec=%timer%%%60
if %hour% lss 10 set hr=0%hr%
if %min% lss 10 set min=0%min%
if %sec% lss 10 set sec=0%sec%
timeout /t 1 >nul
set /a timer-=1
if %timer% gtr 0 goto countdown_real
REM Play a sound
start "" "C:\Windows\Media\ring04.wav"
goto countdown


:netstat1
echo. [40;37m
set prevmenu=2
cls
netstat
pause
cls
goto more1

:cleaner1
echo [40;37mClean Temporary Files and Empty Recycle Bin
echo.
echo 1 Clean Temporary Files
echo 2 Empty Reycle Bin
echo 3 Combine options 1 and 2
echo 4 Go Back
echo.
echo Select an option and press ENTER
echo.
echo ╔═[[40;33mCleaner[40;37m]
set /p cleaner1= ╚═══➤ [40;31m
if  %cleaner1% =="1" del /f /q %temp%\*.* && timeout /t 2 >nul
if  %cleaner1% =="2" rd /s /q %systemdrive%\$Recycle.Bin && timeout /t 2 >nul
if  %cleaner1% =="3" del /f /q %temp%\*.* && rd /s /q %systemdrive%\$Recycle.Bin
if  %cleaner1% =="4" goto more1
goto more1


:bios_restart
echo.
echo [40;37m1 Restart to BIOS/UEFI (Immediate)
echo 2 Restart to BIOS/UEFI (5 second timer)
echo 3 Restart to BIOS/UEFI (10 second timer)
echo 4 Restart to BIOS/UEFI (30 second timer)
echo 5 Restart to BIOS/UEFI (1 minute timer)
echo 6 Restart to BIOS/UEFI (5 minute timer)
echo 7 Restart to BIOS/UEFI (10 minute timer)
echo 8 Restart to BIOS/UEFI (30 minute timer)
echo 9 Restart to BIOS/UEFI (60 minute timer)
echo 0 Cancel restart to BIOS/UEFI
echo back to return
echo.
echo ╔═[[40;33mBIOS[40;37m]
set /p biosrestart= ╚═══➤ [40;31m
if "%biosrestart%"=="1" shutdown /r /fw /f /t 0
if "%biosrestart%"=="2" shutdown /r /fw /f /t 5
if "%biosrestart%"=="3" shutdown /r /fw /f /t 10
if "%biosrestart%"=="4" shutdown /r /fw /f /t 30
if "%biosrestart%"=="5" shutdown /r /fw /f /t 60
if "%biosrestart%"=="6" shutdown /r /fw /f /t 300
if "%biosrestart%"=="7" shutdown /r /fw /f /t 600
if "%biosrestart%"=="8" shutdown /r /fw /f /t 1800
if "%biosrestart%"=="9" shutdown /r /fw /f /t 3600
if "%biosrestart%"=="0" shutdown /a
if "%biosrestart%"=="back" goto launcher1
goto bios_restart



:steamlauncher1
cls
echo.
echo.
echo         [40;31m    ______   _________  ______   ________   ___ __ __
echo         [40;31m   /_____/\ /________/\/_____/\ /_______/\ /__//_//_/\
echo         [40;31m   \::::_\/_\__.::.__\/\::::_\/_\::: _  \ \\::\: \: \ \
echo         [40;31m    \:\/___/\  \::\ \   \:\/___/\\::(_)  \ \\:.      \ \
echo         [40;31m     \_::._\:\  \::\ \   \::___\/_\:: __  \ \\:.\-/\  \ \
echo         [40;31m       /____\:\  \::\ \   \:\____/\\:.\ \  \ \\. \  \  \ \
echo         [40;31m       \_____\/   \__\/    \_____\/ \__\/\__\/ \__\/ \__\/[40;37m
echo         [40;31m
echo.
echo.
echo                                  [40;37m[[40;31moptions[40;37m]
echo                     ╔═════════════════════════════════╗
echo                     ║ [[40;31m1[40;37m]: launch using run command]  ║
echo                     ║ [[40;31m2[40;37m]: go back]                   ║
echo                     ╚═════════════════════════════════╝
echo                               ╔═════════════╗
echo                               ║ Games = [40;32m500[40;37m ║
echo                               ╚═════════════╝
echo.
echo ╔═[[40;31mSteam[40;37m Launcher]
set /p steamlauncher1= ╚═══➤ [40;31m
if %steamlauncher1% == 1 goto runbyid1
if %steamlauncher1% == 2 goto launcher1
if %steamlauncher1% == back goto launcher1
if %steamlauncher1% == exit goto exit1
echo.
echo [40;37mplease pick ether 1 or 2.
goto steamlauncher1


:runbyid1
cls
echo [40;37m╔═════════════════════════════╗
ECHO ║   [Run game by [40;31mSteam[40;37m ID]    ║
echo ╚═════════════════════════════╝
echo.
echo [examples/how to]
echo.
echo * steam://rungameid/[40;31m730[40;37m
echo * https://store.steampowered.com/app/[40;31m730[40;37m/CounterStrike_2/
echo (only type the number in [40;31mRed[40;37m not the full link)
echo.
echo [to return to [40;31msteam[40;37m launcher type [40;32mback[40;37m]
echo.
echo ╔═[[40;31mRun By ID[40;37m]
set /p runbyid1= ╚═══➤ [40;31m
echo.
if %runbyid1% == back goto steamlauncher1
start steam://rungameid/%runbyid1%
echo [40;32mattempting game launch using code [40;37m"[40;31m%runbyid1%[40;37m"[40;37m
ping localhost -n 5 -w 1.0>nul
goto steamlauncher1



:update1

mode con lines=24 cols=80
if /i not "%~1"=="updated" (
    echo Updating %~nx0 ...
    >nul 2>&1 powershell iwr "https://raw.githubusercontent.com/dx-n/Athena/main/Athena.bat" -OutFile "%temp%\%~nx0"
    >nul 2>&1 move /y "%temp%\%~nx0" "%~0"
    (start "%~dp0" "%~0" updated) & exit /b
)
cd /d "%~dp0"
cd /d "%~dp0"
exit

:patch1
echo.
echo [40;37m
echo                                [[40;31mPatch Notes[40;37m]
echo                  ╔═════════════════════════════════════════╗
echo                  ║ [[40;32mLast Updated[40;37m]: 2nd December 2024       ║
echo                  ╚═════════════════════════════════════════╝
echo                  ╔═════════════════════════════════════════╗
echo                  ║* [[40;32mAdded[40;37m]: more options                  ║
echo                  ║* [[40;31mRemoved[40;37m]: N/A                         ║
echo                  ║* [[40;33mFixed[40;37m]: loop bug                      ║
echo                  ╚═════════════════════════════════════════╝
echo.
pause>nul
goto launcher1



:help123
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             [40;37mwe
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 -w 1.0>nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             we don't
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 -w 1.0>nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             we don't get
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 -w 1.0>nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             we don't get along
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 -w 1.0>nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             we don't get along.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 3 -w 1.0>nul
goto launcher1








:bond1
cls
echo [40;37m
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                       “Bond. James Bond.” — Sean Connery
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 5 -w 1.0>nul
cls
echo.
echo           0000             0000        7777777777777777/========___________
echo         00000000         00000000      777777777777777/  \\ \\  ___________
echo        000    000       000    000     777       7777/=========//
echo       000      000     000      000             7777// \\     //
echo      0000      0000   0000      0000           7777//   \\   //
echo      0000      0000   0000      0000          7777//========//
echo      0000      0000   0000      0000         7777
echo      0000      0000   0000      0000        7777
echo       000      000     000      000        7777
echo        000    000       000    000       77777
echo         00000000         00000000       7777777
echo           0000             0000        777777777
ping localhost -n 5 -w 1.0>nul
goto launcher1








:999
cls
echo. [40;37m
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                         @@@@@        @@@@@       @@@@@
echo.                       @@@    @@@  ,@@#   @@@   @@@    @@@
echo.                       @@@    @@@   @@@   @@@@  @@@    @@@
echo.                          #: @@@       #, @@@      /# @@@
echo.                           @@@         @@@          @@@
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ping localhost -n 5 -w 1.0>nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                         @@@@@        @@@@@       @@@@@
echo.                       @@@    @@@  ,@@#   @@@   @@@    @@@
echo.                       @@@    @@@   @@@   @@@@  @@@    @@@
echo.                         #:  @@@       #, @@@      /# @@@
echo.                           @@@         @@@          @@@
echo.
echo.
echo.
echo.                            RIP JUICE WRLD (1998-2019)
echo.
echo.
echo.
echo.
ping localhost -n 5 -w 1.0>nul
goto launcher1








:exit1
echo.
echo [40;37mAre you sure you want to [40;31mexit[40;37m? (y/n)
echo.
echo ╔═[[40;31mexit[40;37m]
set /p exit1= ╚═══➤ [40;31m
if %exit1% == y goto exit2
if %exit1% == n goto launcher1
echo [40;37mplease type either "[40;34my[40;37m" or "[40;34mn[40;37m"
ping localhost -n 5 -w 1.0>nul
goto exit1








:exit2
cls
echo.
echo [40;37m                          *         *      *         *
ping localhost -n 1 -w 1.0>nul
echo                       ***          **********          ***
ping localhost -n 1 -w 1.0>nul
echo                    *****           **********           *****
ping localhost -n 1 -w 1.0>nul
echo                  *******           *[40;31m*[40;37m******[40;31m*[40;37m*           *******
ping localhost -n 1 -w 1.0>nul
echo                **********         ************         **********
ping localhost -n 1 -w 1.0>nul
echo               ****************************************************
ping localhost -n 1 -w 1.0>nul
echo              ******************************************************
ping localhost -n 1 -w 1.0>nul
echo             ********************************************************
ping localhost -n 1 -w 1.0>nul
echo             ********************************************************
ping localhost -n 1 -w 1.0>nul
echo             ********************************************************
ping localhost -n 1 -w 1.0>nul
echo               ******************************************************
ping localhost -n 1 -w 1.0>nul
echo                ********      ************************      ********
ping localhost -n 1 -w 1.0>nul
echo                 *******       *     *********      *       *******
ping localhost -n 1 -w 1.0>nul
echo                   ******             *******              ******
ping localhost -n 1 -w 1.0>nul
echo                     *****             *****              *****
ping localhost -n 1 -w 1.0>nul
echo                       ***              ***              ***
ping localhost -n 1 -w 1.0>nul
echo                          **             *              **
ping localhost -n 2 -w 1.0>nul
Exit
