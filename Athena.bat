rem sourse code written by: dxn
rem sourse code updated April 2024 by: dxn
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
@Echo off
chcp 65001 >nul
title ATHENA 2024
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
echo      ╔═════════════════════════════════╗╔═════════════════════════════════╗
echo      ║  [[40;31m1[40;37m]: Run System Check]         ║║ [[40;31m5[40;37m]: +++++++++++++]             ║
echo      ║  [[40;31m2[40;37m]: Game Launcher]            ║║ [[40;31m6[40;37m]: More Options]              ║
echo      ║  [[40;31m3[40;37m]: To Clear Screen]          ║║ [[40;31m7[40;37m]: Settings]                  ║   
echo      ║  [[40;31m4[40;37m]: All Commands]             ║║ [[40;31m8[40;37m]: Exit]                      ║
echo      ╚═════════════════════════════════╝╚═════════════════════════════════╝
echo.   
echo.                              
echo.                                
echo ╔═[[40;31mATHENA[40;37m]
set /p launcher1=╚═══➤[40;31m  
if %launcher1% == 0 goto zero1
if %launcher1% == 1 goto system1
if %launcher1% == 2 goto steamlauncher1
if %launcher1% == 3 goto clear1
if %launcher1% == 4 goto allcommands
if %launcher1% == 5 goto supported1
if %launcher1% == 6 goto more1
if %launcher1% == 7 goto settings1
if %launcher1% == 8 goto exit1
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








:gamelist
echo.
echo [40;37m[loading game list] 
ping localhost -n 2 -w 1.0>nul
echo.
start https://pastebin.com/raw/VcNvdFd6
goto steamlauncher1








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
echo [40;37m[Running system check]
ping localhost -n 3 -w 1.0>nul
cls
echo [40;37m╔═══════════════════════╗
ECHO ║ [Windows information] ║
echo ╚═══════════════════════╝
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
systeminfo | findstr /c:"System Model"
systeminfo | findstr /c:"Domain"
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
pause>nul







:allcommands
echo.
echo                       [40;37m══════════════════════════════════
echo                              ╔═══════════════════╗
echo                              ║ -  [40;31mALL OPTIONS[40;37m  - ║
echo                              ╚═══════════════════╝
echo                      ╔══════════════════════════════════╗
echo                      ║* [[40;31m1[40;37m]: Runs system check          ║
echo                      ║* [[40;31m2[40;37m]: Launcher options           ║
echo                      ║* [[40;31m3[40;37m]: to clear screen            ║
echo                      ║* [[40;31m4[40;37m]: view all commands          ║
echo                      ║* [[40;31m5[40;37m]: additional information     ║
echo                      ║* [[40;31m6[40;37m]: More options               ║ 
echo                      ║* [[40;31m7[40;37m]: see supported launchers    ║
echo                      ║* [[40;31m8[40;37m]: To exit                    ║
echo                      ║* [[40;31mcls[40;37m]: to clear screen          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║ 
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ║* [[40;31m?[40;37m]: [[40;32mmystery command[40;37m]          ║
echo                      ╚══════════════════════════════════╝
echo.
pause>nul
goto launcher1








:more1
echo [40;37m
echo                                  [[40;31mmore options[40;37m]
echo     ╔══════════════════════════════════╗╔══════════════════════════════════╗
echo     ║* [[40;31m1[40;37m]: pc                         ║║* [[40;31m4[40;37m]: view netstat               ║
echo     ║* [[40;31m2[40;37m]: google search              ║║* [[40;31m5[40;37m]: Updater                    ║
echo     ║* [[40;31m3[40;37m]: date and time              ║║* [[40;31m6[40;37m]: go back                    ║
echo     ╚══════════════════════════════════╝╚══════════════════════════════════╝
echo.
echo ╔═[[40;31mmore options[40;37m]
set /p more1= ╚═══➤ [40;31m
if %more1% == 1 goto pc1
if %more1% == 2 goto google1
if %more1% == 3 goto dandt1
if %more1% == 4 goto netstat1
if %more1% == 5 goto update1
if %more1% == 6 goto launcher1
echo.
echo [40;37mPlease pick an option between [40;32m1-6[40;37m.
ping localhost -n 4 -w 1.0>nul
goto more1








:pc1
cls
echo. [40;37m
echo  [40;33m                                 ██▓███   ▄████▄  
echo  [40;33m                                ▓██░  ██▒▒██▀ ▀█  
echo  [40;33m                                ▓██░ ██▓▒▒▓█    ▄ 
echo  [40;33m                                ▒██▄█▓▒ ▒▒▓▓▄ ▄██▒
echo  [40;33m                                ▒██▒ ░  ░▒ ▓███▀ ░
echo  [40;33m                                ▒▓▒░ ░  ░░ ░▒ ▒  ░
echo  [40;33m                                ░▒ ░       ░  ▒   
echo  [40;33m                                ░░       ░[40;37m        
echo.
echo                           ╔═════════════════════════════╗
echo                           ║ [[40;31m1[40;37m] - pc shut down          ║
echo                           ║ [[40;31m2[40;37m] - pc restart            ║
echo                           ║ [[40;31m3[40;37m] - pc Sleep              ║
echo                           ║ [[40;31m4[40;37m] - go back               ║
echo                           ╚═════════════════════════════╝ 
echo.
echo ╔═[[40;33mPC[40;37m]
set /p pc1= ╚═══➤ [40;31m 
if %pc1% == 1 goto shutdown1
if %pc1% == 2 goto restart1
if %pc1% == 3 goto sleep1 
if %pc1% == 4 goto launcher1
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
echo                           ║   Press "[40;32menter[40;37m" to return   ║ 
echo                           ╚═════════════════════════════╝
echo.
pause>nul
goto launcher1








:netstat1
echo. [40;37m
set prevmenu=2
cls 
netstat
pause
cls
goto more1








:supported1
echo.
echo    [40;37m╔═══════════════════════════════════════════════════╗
echo    ║* [The current only supported platform is [40;31mSteam[40;37m]   ║
echo    ║* [All other platforms not available at this time] ║
echo    ║* [Totel launchable [40;31msteam[40;37m games: [40;32m500[40;37m]              ║
echo    ╚═══════════════════════════════════════════════════╝
pause>nul
goto launcher1
cls







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
echo.
echo [40;37mplease pick ether 1 or 2.


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
echo [to return to [40;31msteam[40;37m launcher press [40;32mEnter[40;37m and wait 5 seconds]
echo.
echo ╔═[[40;31mRun By ID[40;37m]
set /p runbyid1= ╚═══➤ [40;31m 
echo.
start steam://rungameid/%runbyid1%
echo [40;32mattempting game launch using code [40;37m"[40;31m%runbyid1%[40;37m"[40;37m
ping localhost -n 5 -w 1.0>nul
goto steamlauncher1



:update1

mode con lines=24 cols=80
utm_source=share&utm_medium=web2x&context=3
if /i not "%~1"=="updated" (
    echo Updating %~nx0 ...
    >nul 2>&1 powershell iwr "https://raw.githubusercontent.com/dx-n/Athena/main/Athena.bat" -OutFile "%temp%\%~nx0"
    >nul 2>&1 move /y "%temp%\%~nx0" "%~0"
    (start "%~dp0" "%~0" updated) & exit /b
)
cd /d "%~dp0"
cd /d "%~dp0"
ping localhost -n 2 -w 1.0>nul
exit



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
echo                             “Bond. James Bond.” — Sean Connery
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