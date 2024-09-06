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
echo      ║  [[40;31m1[40;37m]: run system check]         ║║ [[40;31m5[40;37m]: Supported Launchers]       ║
echo      ║  [[40;31m2[40;37m]: game Launcher]            ║║ [[40;31m6[40;37m]: more options]              ║
echo      ║  [[40;31m3[40;37m]: to clear screen]          ║║ [[40;31m7[40;37m]: Settings]                  ║   
echo      ║  [[40;31m4[40;37m]: all commands]             ║║ [[40;31m8[40;37m]: Exit]                      ║
echo      ╚═════════════════════════════════╝╚═════════════════════════════════╝
echo.   
echo.                              
echo.                                
echo ╔═[[40;31mATHENA[40;37m]
set /p launcher1=╚═══➤[40;31m  
if %launcher1% == 0 goto zero1
if %launcher1% == 1 goto system1
if %launcher1% == 2 goto gameoptions1
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
echo     ║* [[40;31m2[40;37m]: google search              ║║* [[40;31m5[40;37m]: pending                    ║
echo     ║* [[40;31m3[40;37m]: date and time              ║║* [[40;31m6[40;37m]: go back                    ║
echo     ╚══════════════════════════════════╝╚══════════════════════════════════╝
echo.
echo ╔═[[40;31mmore options[40;37m]
set /p more1= ╚═══➤ [40;31m
if %more1% == 1 goto pc1
if %more1% == 2 goto google1
if %more1% == 3 goto dandt1
if %more1% == 4 goto netstat1
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








:gameoptions1
echo.
echo                                   [40;37m[[40;31moptions[40;37m] 
echo                     ╔═════════════════════════════════╗
echo                     ║       [[40;31m1[40;37m]: [40;31mSteam launcher[40;37m       ║
echo                     ╚═════════════════════════════════╝
echo                     ╔═════════════════════════════════╗
echo                     ║          [[40;31m2[40;37m]: Go back           ║
echo                     ╚═════════════════════════════════╝
echo.
echo ╔═[[40;31mlauncher options[40;37m]
set /p gameoptions1= ╚═══➤ [40;31m 
if %gameoptions1% == 1 goto steamlauncher1
if %gameoptions1% == 2 goto launcher1
echo [40;37mplease pick ether 1 or 2.
ping localhost -n 4 -w 1.0>nul
goto gameoptions1








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
echo                                  [[40;31moptions[40;37m] 
echo    ╔═════════════════════════════════╗╔═════════════════════════════════╗
echo    ║  [[40;31m1[40;37m]: available games codes]    ║║ [[40;31m2[40;37m]: launch using run command]  ║
echo    ║  [[40;31m3[40;37m]: help]                     ║║ [[40;31m4[40;37m]: go back]                   ║
echo    ╚═════════════════════════════════╝╚═════════════════════════════════╝
echo                               ╔═════════════╗
echo                               ║ Games = [40;32m500[40;37m ║
echo                               ╚═════════════╝
echo.
echo ╔═[[40;31mSteam[40;37m Launcher]
set /p steamlauncher1= ╚═══➤ [40;31m 
if %steamlauncher1% == 1 goto gamelist
if %steamlauncher1% == 2 goto runbyid1
if %steamlauncher1% == 3 goto help1
if %steamlauncher1% == 4 goto launcher1
if %steamlauncher1% == slapshot start steam://rungameid/1173370      
if %steamlauncher1% == rl start steam://rungameid/252950       
if %steamlauncher1% == rocketleague start steam://rungameid/252950   
if %steamlauncher1% == tcwild start steam://rungameid/460930         
if %steamlauncher1% == tcscb start steam://rungameid/235600          
if %steamlauncher1% == tctd start steam://rungameid/365590           
if %steamlauncher1% == tcscc start steam://rungameid/33229           
if %steamlauncher1% == vegas start steam://rungameid/13540           
if %steamlauncher1% == r6vegas start steam://rungameid/13540         
if %steamlauncher1% == vegas2 start steam://rungameid/15120          
if %steamlauncher1% == tcscct start steam://rungameid/13570          
if %steamlauncher1% == r63 start steam://rungameid/19830             
if %steamlauncher1% == tcgrfs start steam://rungameid/212630         
if %steamlauncher1% == tcew start steam://rungameid/21800            
if %steamlauncher1% == tcsc start steam://rungameid/13560            
if %steamlauncher1% == tcgrit start steam://rungameid/13630          
if %steamlauncher1% == tcgrds start steam://rungameid/13620          
if %steamlauncher1% == r6 start steam://rungameid/359550             
if %steamlauncher1% == rainbow6 start steam://rungameid/359550       
if %steamlauncher1% == wallpaper  start steam://rungameid/431960     
if %steamlauncher1% == rdr2 start steam://rungameid/1174180          
if %steamlauncher1% == cp start steam://rungameid/1091500            
if %steamlauncher1% == cyberpunk start steam://rungameid/1091500     
if %steamlauncher1% == csgo start steam://rungameid/730              
if %steamlauncher1% == counterstrike start steam://rungameid/730     
if %steamlauncher1% == bo3 start steam://rungameid/311210            
if %steamlauncher1% == blackops3 start steam://rungameid/311210      
if %steamlauncher1% == ark start steam://rungameid/346110            
if %steamlauncher1% == theforest start steam://rungameid/242760      
if %steamlauncher1% == amongus start steam://rungameid/945360        
if %steamlauncher1% == dyinglight start steam://rungameid/239140     
if %steamlauncher1% == handsim start steam://rungameid/657200        
if %steamlauncher1% == handsimulator start steam://rungameid/657200  
if %steamlauncher1% == hs start steam://rungameid/657200             
if %steamlauncher1% == horrorsim start steam://rungameid/1027820     
if %steamlauncher1% == hsh start steam://rungameid/1027820           
if %steamlauncher1% == hss start steam://rungameid/924140            
if %steamlauncher1% == left4dead start steam://rungameid/500         
if %steamlauncher1% == left4dead2 start steam://rungameid/550        
if %steamlauncher1% == farcry start steam://rungameid/13520          
if %steamlauncher1% == farcry2 start steam://rungameid/19900         
if %steamlauncher1% == farcry3 start steam://rungameid/220240        
if %steamlauncher1% == farcry4 start steam://rungameid/298110        
if %steamlauncher1% == farcry5 start steam://rungameid/552520        
if %steamlauncher1% == farcryprimal start steam://rungameid/371660   
if %steamlauncher1% == farcryp start steam://rungameid/371660        
if %steamlauncher1% == farcrynewdawn start steam://rungameid/939960  
if %steamlauncher1% == farcrynd start steam://rungameid/939960       
if %steamlauncher1% == apex start steam://rungameid/1172470          
if %steamlauncher1% == rust start steam://rungameid/252490           
if %steamlauncher1% == soundpad start steam://rungameid/629520       
if %steamlauncher1% == valheim start steam://rungameid/892970        
if %steamlauncher1% == val start steam://rungameid/892970            
if %steamlauncher1% == dota start steam://rungameid/570              
if %steamlauncher1% == d2 start steam://rungameid/570                
if %steamlauncher1% == pubg start steam://rungameid/578080           
if %steamlauncher1% == tf2 start steam://rungameid/440               
if %steamlauncher1% == fm2021 start steam://rungameid/1263850        
if %steamlauncher1% == dbd start steam://rungameid/381210            
if %steamlauncher1% == gm start steam://rungameid/4000               
if %steamlauncher1% == btd6 start steam://rungameid/960090           
if %steamlauncher1% == btd5 start steam://rungameid/306020           
if %steamlauncher1% == ets2 start steam://rungameid/227300           
if %steamlauncher1% == eurotruck start steam://rungameid/227300      
if %steamlauncher1% == dz start steam://rungameid/221100             
if %steamlauncher1% == dayz start steam://rungameid/221100           
if %steamlauncher1% == warframe start steam://rungameid/230410       
if %steamlauncher1% == wf start steam://rungameid/230410             
if %steamlauncher1% == darksouls3 start steam://rungameid/374320     
if %steamlauncher1% == ds3 start steam://rungameid/374320            
if %steamlauncher1% == civ6 start steam://rungameid/289070           
if %steamlauncher1% == des2 start steam://rungameid/1085660          
if %steamlauncher1% == stardew start steam://rungameid/413150        
if %steamlauncher1% == stardewval start steam://rungameid/413150     
if %steamlauncher1% == terraria start steam://rungameid/105600       
if %steamlauncher1% == teria start steam://rungameid/105600          
if %steamlauncher1% == war start steam://rungameid/236390            
if %steamlauncher1% == warthunder start steam://rungameid/236390     
if %steamlauncher1% == warham2 start steam://rungameid/594570        
if %steamlauncher1% == bdo start steam://rungameid/582660            
if %steamlauncher1% == hoi4 start steam://rungameid/394360           
if %steamlauncher1% == ck3 start steam://rungameid/1158310           
if %steamlauncher1% == brawl start steam://rungameid/291550          
if %steamlauncher1% == farmsim11 start steam://rungameid/90200       
if %steamlauncher1% == farmsim13 start steam://rungameid/220260      
if %steamlauncher1% == farmsim15 start steam://rungameid/313160      
if %steamlauncher1% == farmsim17 start steam://rungameid/447020      
if %steamlauncher1% == farmsim19 start steam://rungameid/787860      
if %steamlauncher1% == elderon start steam://rungameid/306130        
if %steamlauncher1% == payday start steam://rungameid/218620         
if %steamlauncher1% == pd2 start steam://rungameid/218620            
if %steamlauncher1% == loophero start steam://rungameid/1282730      
if %steamlauncher1% == satisfac start steam://rungameid/526870       
if %steamlauncher1% == satis start steam://rungameid/526870          
if %steamlauncher1% == aoe2 start steam://rungameid/813780           
if %steamlauncher1% == empire2 start steam://rungameid/813780        
if %steamlauncher1% == poe start steam://rungameid/238960            
if %steamlauncher1% == pathofexile start steam://rungameid/238960    
if %steamlauncher1% == phobia start steam://rungameid/739630         
if %steamlauncher1% == smite start steam://rungameid/386360          
if %steamlauncher1% == ff3 start steam://rungameid/239120            
if %steamlauncher1% == ff4 start steam://rungameid/312750            
if %steamlauncher1% == ff4ay start steam://rungameid/346830          
if %steamlauncher1% == ff5 start steam://rungameid/382890            
if %steamlauncher1% == ff6 start steam://rungameid/382900            
if %steamlauncher1% == ff7 start steam://rungameid/39140             
if %steamlauncher1% == ff8r start steam://rungameid/1026680          
if %steamlauncher1% == ff9 start steam://rungameid/377840            
if %steamlauncher1% == ffxx2 start steam://rungameid/359870          
if %steamlauncher1% == ff11 start steam://rungameid/230350           
if %steamlauncher1% == ff13 start steam://rungameid/292120           
if %steamlauncher1% == ff132 start steam://rungameid/292140          
if %steamlauncher1% == ff131f start steam://rungameid/345350         
if %steamlauncher1% == dff start steam://rungameid/921590            
if %steamlauncher1% == fft0 start steam://rungameid/340170           
if %steamlauncher1% == woff start steam://rungameid/552700           
if %steamlauncher1% == ff14 start steam://rungameid/39210            
if %steamlauncher1% == ff15 start steam://rungameid/637650           
if %steamlauncher1% == arma3 start steam://rungameid/107410          
if %steamlauncher1% == unturned start steam://rungameid/304930       
if %steamlauncher1% == civ5 start steam://rungameid/8930             
if %steamlauncher1% == fifa21 start steam://rungameid/1313860        
if %steamlauncher1% == eu4 start steam://rungameid/236850            
if %steamlauncher1% == eldersky start steam://rungameid/489830       
if %steamlauncher1% == skyelder start steam://rungameid/611670       
if %steamlauncher1% == 7daystodie start steam://rungameid/251570     
if %steamlauncher1% == daystodie start steam://rungameid/251570      
if %steamlauncher1% == sot start steam://rungameid/1172620           
if %steamlauncher1% == stellar start steam://rungameid/281990        
if %steamlauncher1% == vrchat start steam://rungameid/438100        
if %steamlauncher1% == monhunter start steam://rungameid/582010     
if %steamlauncher1% == mhw start steam://rungameid/582010            
if %steamlauncher1% == rworld start steam://rungameid/294100         
if %steamlauncher1% == rw start steam://rungameid/294100             
if %steamlauncher1% == wotb start steam://rungameid/444200           
if %steamlauncher1% == huntsd start steam://rungameid/594650         
if %steamlauncher1% == mandb2 start steam://rungameid/261550         
if %steamlauncher1% == paladins start steam://rungameid/444090       
if %steamlauncher1% == pals start steam://rungameid/444090           
if %steamlauncher1% == skylines start steam://rungameid/255710       
if %steamlauncher1% == conan start steam://rungameid/440900          
if %steamlauncher1% == factorio start steam://rungameid/427520       
if %steamlauncher1% == facto start steam://rungameid/427520          
if %steamlauncher1% == tablesim start steam://rungameid/286160       
if %steamlauncher1% == ttsim start steam://rungameid/286160          
if %steamlauncher1% == witcher start steam://rungameid/292030        
if %steamlauncher1% == tw3 start steam://rungameid/292030            
if %steamlauncher1% == tmod start steam://rungameid/1281930          
if %steamlauncher1% == pes21 start steam://rungameid/1259970         
if %steamlauncher1% == drg start steam://rungameid/548430            
if %steamlauncher1% == deeproc start steam://rungameid/548430        
if %steamlauncher1% == dontstarve start steam://rungameid/322330     
if %steamlauncher1% == ed start steam://rungameid/359320             
if %steamlauncher1% == divsin2 start steam://rungameid/435150        
if %steamlauncher1% == doom start steam://rungameid/782330           
if %steamlauncher1% == doome start steam://rungameid/782330          
if %steamlauncher1% == dyson start steam://rungameid/1366540         
if %steamlauncher1% == conblade start steam://rungameid/905370       
if %steamlauncher1% == hades start steam://rungameid/1145360         
if %steamlauncher1% == albion start steam://rungameid/761890         
if %steamlauncher1% == forza4 start steam://rungameid/1293830        
if %steamlauncher1% == nba17 start steam://rungameid/385760          
if %steamlauncher1% == nba18 start steam://rungameid/577800          
if %steamlauncher1% == nba19 start steam://rungameid/841370          
if %steamlauncher1% == nba20 start steam://rungameid/1089350         
if %steamlauncher1% == nba21 start steam://rungameid/1225330         
if %steamlauncher1% == nbavr start steam://rungameid/519490          
if %steamlauncher1% == scum start steam://rungameid/513710           
if %steamlauncher1% == se start steam://rungameid/244850             
if %steamlauncher1% == boir start steam://rungameid/250900           
if %steamlauncher1% == squad start steam://rungameid/393380          
if %steamlauncher1% == fallguys start steam://rungameid/1097150      
if %steamlauncher1% == fallguy start steam://rungameid/1097150       
if %steamlauncher1% == geodash start steam://rungameid/322170        
if %steamlauncher1% == halomcc start steam://rungameid/976730        
if %steamlauncher1% == halomaster start steam://rungameid/976730     
if %steamlauncher1% == halo start steam://rungameid/976730           
if %steamlauncher1% == runescape start steam://rungameid/1343400     
if %steamlauncher1% == warham start steam://rungameid/552500         
if %steamlauncher1% == aoe213 start steam://rungameid/221380         
if %steamlauncher1% == nioh2 start steam://rungameid/1325200         
if %steamlauncher1% == sims4 start steam://rungameid/1222670         
if %steamlauncher1% == aco start steam://rungameid/812140            
if %steamlauncher1% == ac4 start steam://rungameid/311560            
if %steamlauncher1% == acbf start steam://rungameid/311560           
if %steamlauncher1% == acroge start steam://rungameid/311560         
if %steamlauncher1% == acs start steam://rungameid/368500            
if %steamlauncher1% == syndicate start steam://rungameid/368500      
if %steamlauncher1% == ac3r start steam://rungameid/911400           
if %steamlauncher1% == acu start steam://rungameid/289650            
if %steamlauncher1% == unity start steam://rungameid/289650          
if %steamlauncher1% == ac2de start steam://rungameid/33230           
if %steamlauncher1% == acbh start steam://rungameid/48190            
if %steamlauncher1% == acdce start steam://rungameid/15100           
if %steamlauncher1% == aclhd start steam://rungameid/260210          
if %steamlauncher1% == southparksot start steam://rungameid/213670   
if %steamlauncher1% == sp1 start steam://rungameid/213670            
if %steamlauncher1% == sp2 start steam://rungameid/488790            
if %steamlauncher1% == wd1 start steam://rungameid/243470            
if %steamlauncher1% == wd2 start steam://rungameid/447040            
if %steamlauncher1% == honor start steam://rungameid/243470          
if %steamlauncher1% == uno start steam://rungameid/470220            
if %steamlauncher1% == gta3 start steam://rungameid/12100            
if %steamlauncher1% == gtavc start steam://rungameid/12110           
if %steamlauncher1% == gtasa start steam://rungameid/12120           
if %steamlauncher1% == gta4 start steam://rungameid/12210            
if %steamlauncher1% == gta5 start steam://rungameid/271590           
if %steamlauncher1% == bully start steam://rungameid/12200           
if %steamlauncher1% == monopoly start steam://rungameid/562810       
if %steamlauncher1% == monplus start steam://rungameid/562810        
if %steamlauncher1% == dying start steam://rungameid/239140          
if %steamlauncher1% == dying2 start steam://rungameid/534380         
if %steamlauncher1% == flightsim start steam://rungameid/1250410     
if %steamlauncher1% == alyx start steam://rungameid/546560           
if %steamlauncher1% == outer start steam://rungameid/578650          
if %steamlauncher1% == border1 start steam://rungameid/8980          
if %steamlauncher1% == border2 start steam://rungameid/49520         
if %steamlauncher1% == border3 start steam://rungameid/397540        
if %steamlauncher1% == raft start steam://rungameid/648800           
if %steamlauncher1% == thehunter start steam://rungameid/518790      
if %steamlauncher1% == trl start steam://rungameid/7000              
if %steamlauncher1% == tra start steam://rungameid/8000              
if %steamlauncher1% == tru start steam://rungameid/8140              
if %steamlauncher1% == lcgol start steam://rungameid/35130           
if %steamlauncher1% == tr1 start steam://rungameid/224960            
if %steamlauncher1% == tr2 start steam://rungameid/225300            
if %steamlauncher1% == tr3 start steam://rungameid/225320            
if %steamlauncher1% == tr4 start steam://rungameid/224980            
if %steamlauncher1% == tr5 start steam://rungameid/225000            
if %steamlauncher1% == tr6 start steam://rungameid/225020            
if %steamlauncher1% == raider start steam://rungameid/203160         
if %steamlauncher1% == lctoo start steam://rungameid/289690          
if %steamlauncher1% == rottr start steam://rungameid/391220          
if %steamlauncher1% == shadow1 start steam://rungameid/750920        
if %steamlauncher1% == hll start steam://rungameid/686810            
if %steamlauncher1% == avengers start steam://rungameid/997070       
if %steamlauncher1% == aven start steam://rungameid/997070           
if %steamlauncher1% == jackbox7 start steam://rungameid/1211630      
if %steamlauncher1% == jb7 start steam://rungameid/1211630           
if %steamlauncher1% == jb6 start steam://rungameid/1005300           
if %steamlauncher1% == jb5 start steam://rungameid/774461            
if %steamlauncher1% == jb4 start steam://rungameid/610180            
if %steamlauncher1% == jb3 start steam://rungameid/434170            
if %steamlauncher1% == jb2 start steam://rungameid/397460            
if %steamlauncher1% == jb1 start steam://rungameid/331670            
if %steamlauncher1% == humanff start steam://rungameid/477160        
if %steamlauncher1% == hff start steam://rungameid/477160            
if %steamlauncher1% == wolfold start steam://rungameid/350080        
if %steamlauncher1% == wolfnew start steam://rungameid/201810        
if %steamlauncher1% == wolf2 start steam://rungameid/612880          
if %steamlauncher1% == wolfyoung start steam://rungameid/1056960     
if %steamlauncher1% == goose start steam://rungameid/837470          
if %steamlauncher1% == just2 start steam://rungameid/8190            
if %steamlauncher1% == just3 start steam://rungameid/225540          
if %steamlauncher1% == just4 start steam://rungameid/517630          
if %steamlauncher1% == theoldrep start steam://rungameid/1286830     
if %steamlauncher1% == starwarstor start steam://rungameid/1286830   
if %steamlauncher1% == bf1 start steam://rungameid/1237980           
if %steamlauncher1% == squadrons start steam://rungameid/1222730     
if %steamlauncher1% == bf2 start steam://rungameid/1237950           
if %steamlauncher1% == fallenorder start steam://rungameid/1172380   
if %steamlauncher1% == portal start steam://rungameid/400            
if %steamlauncher1% == portal2 start steam://rungameid/620           
if %steamlauncher1% == oc start steam://rungameid/448510             
if %steamlauncher1% == oc2 start steam://rungameid/728880            
if %steamlauncher1% == oc3 start steam://rungameid/1243830           
if %steamlauncher1% == gangb start steam://rungameid/285900          
if %steamlauncher1% == hp14 start steam://rungameid/21130            
if %steamlauncher1% == hp57 start steam://rungameid/204120           
if %steamlauncher1% == legolord start steam://rungameid/214510       
if %steamlauncher1% == legohob start steam://rungameid/285160        
if %steamlauncher1% == legobat3 start steam://rungameid/313690       
if %steamlauncher1% == legosh start steam://rungameid/249130         
if %steamlauncher1% == legoaven start steam://rungameid/647830       
if %steamlauncher1% == legostar start steam://rungameid/32440        
if %steamlauncher1% == legostar3 start steam://rungameid/32510       
if %steamlauncher1% == legodc start steam://rungameid/829110         
if %steamlauncher1% == legojw start steam://rungameid/352400         
if %steamlauncher1% == legow start steam://rungameid/332310          
if %steamlauncher1% == legounder start steam://rungameid/578330      
if %steamlauncher1% == superhot start steam://rungameid/617830       
if %steamlauncher1% == jobsim start steam://rungameid/448280         
if %steamlauncher1% == vacsim start steam://rungameid/726830         
if %steamlauncher1% == ducks start steam://rungameid/503580          
if %steamlauncher1% == stride start steam://rungameid/1292040        
if %steamlauncher1% == pavlov start steam://rungameid/555160         
if %steamlauncher1% == thiefsim start steam://rungameid/1019550      
if %steamlauncher1% == bsaber start steam://rungameid/620980         
if %steamlauncher1% == saber start steam://rungameid/620980          
if %steamlauncher1% == noire start steam://rungameid/722230          
if %steamlauncher1% == lavr start steam://rungameid/722230           
if %steamlauncher1% == gorilla start steam://rungameid/1533390       
if %steamlauncher1% == recroom start steam://rungameid/471710        
if %steamlauncher1% == realmr start steam://rungameid/813820         
if %steamlauncher1% == realm start steam://rungameid/813820          
if %steamlauncher1% == f120 start steam://rungameid/1080110          
if %steamlauncher1% == f119 start steam://rungameid/928600           
if %steamlauncher1% == f118 start steam://rungameid/737800           
if %steamlauncher1% == f117 start steam://rungameid/515220           
if %steamlauncher1% == f116 start steam://rungameid/391040           
if %steamlauncher1% == f115 start steam://rungameid/286570           
if %steamlauncher1% == f114 start steam://rungameid/226580           
if %steamlauncher1% == f112 start steam://rungameid/208500           
if %steamlauncher1% == f111 start steam://rungameid/44360            
if %steamlauncher1% == dirtr start steam://rungameid/310560          
if %steamlauncher1% == dirt2 start steam://rungameid/690790          
if %steamlauncher1% == dirt4 start steam://rungameid/421020          
if %steamlauncher1% == dirt5 start steam://rungameid/1038250         
if %steamlauncher1% == beamng start steam://rungameid/284160         
if %steamlauncher1% == crew1 start steam://rungameid/241560          
if %steamlauncher1% == crew2 start steam://rungameid/646910          
if %steamlauncher1% == little1 start steam://rungameid/424840        
if %steamlauncher1% == little2 start steam://rungameid/860510        
if %steamlauncher1% == grounded start steam://rungameid/962130       
if %steamlauncher1% == marvel start steam://rungameid/997070         
if %steamlauncher1% == bf4 start steam://rungameid/1238860           
if %steamlauncher1% == bf5 start steam://rungameid/1238810           
if %steamlauncher1% == bf1 start steam://rungameid/1238840           
if %steamlauncher1% == subnaut start steam://rungameid/264710        
if %steamlauncher1% == sub start steam://rungameid/264710            
if %steamlauncher1% == zoo start steam://rungameid/703080            
if %steamlauncher1% == ranchsim start steam://rungameid/1119730      
if %steamlauncher1% == max1 start steam://rungameid/12140            
if %steamlauncher1% == max2 start steam://rungameid/12150            
if %steamlauncher1% == max3 start steam://rungameid/204100           
if %steamlauncher1% == vtol start steam://rungameid/667970           
if %steamlauncher1% == corsa start steam://rungameid/244210          
if %steamlauncher1% == corsacomp start steam://rungameid/805550      
if %steamlauncher1% == pokervr start steam://rungameid/886250        
if %steamlauncher1% == arizona start steam://rungameid/342180        
if %steamlauncher1% == sevr start steam://rungameid/752480           
if %steamlauncher1% == googlevr start steam://rungameid/348250       
if %steamlauncher1% == tes5vr start steam://rungameid/611670         
if %steamlauncher1% == tesvr start steam://rungameid/611670          
if %steamlauncher1% == dcsworld start steam://rungameid/223750       
if %steamlauncher1% == bladevr start steam://rungameid/629730        
if %steamlauncher1% == racing start steam://rungameid/266410         
if %steamlauncher1% == fnaf1 start steam://rungameid/319510          
if %steamlauncher1% == fnaf2 start steam://rungameid/332800          
if %steamlauncher1% == fnaf3 start steam://rungameid/354140          
if %steamlauncher1% == fnaf4 start steam://rungameid/388090          
if %steamlauncher1% == fnafhw start steam://rungameid/732690         
if %steamlauncher1% == fnafsl start steam://rungameid/506610         
if %steamlauncher1% == re1 start steam://rungameid/304240            
if %steamlauncher1% == re2 start steam://rungameid/883710            
if %steamlauncher1% == re3 start steam://rungameid/952060            
if %steamlauncher1% == re4 start steam://rungameid/254700            
if %steamlauncher1% == re5 start steam://rungameid/21690             
if %steamlauncher1% == re6 start steam://rungameid/221040            
if %steamlauncher1% == re7 start steam://rungameid/418370            
if %steamlauncher1% == re8 start steam://rungameid/1196590           
if %steamlauncher1% == killingf1 start steam://rungameid/1250        
if %steamlauncher1% == killingf2 start steam://rungameid/232090      
if %steamlauncher1% == killingfinc start steam://rungameid/690810    
if %steamlauncher1% == metro2033 start steam://rungameid/286690      
if %steamlauncher1% == metrollr start steam://rungameid/287390       
if %steamlauncher1% == metroex start steam://rungameid/412020        
if %steamlauncher1% == cod1 start steam://rungameid/2620             
if %steamlauncher1% == coduo start steam://rungameid/2640            
if %steamlauncher1% == cod2 start steam://rungameid/2630             
if %steamlauncher1% == cod4 start steam://rungameid/7940             
if %steamlauncher1% == wow start steam://rungameid/10090             
if %steamlauncher1% == mw2 start steam://rungameid/10180             
if %steamlauncher1% == bo1 start steam://rungameid/42700             
if %steamlauncher1% == mw3 start steam://rungameid/115300            
if %steamlauncher1% == bo2 start steam://rungameid/202970            
if %steamlauncher1% == codg start steam://rungameid/209160           
if %steamlauncher1% == bo3 start steam://rungameid/311210            
if %steamlauncher1% == codiw start steam://rungameid/292730          
if %steamlauncher1% == mwr start steam://rungameid/393080            
if %steamlauncher1% == codaw start steam://rungameid/209650          
if %steamlauncher1% == ww2 start steam://rungameid/476600            
if %steamlauncher1% == ramvr start steam://rungameid/469610          
if %steamlauncher1% == twd start steam://rungameid/207610            
if %steamlauncher1% == twds2 start steam://rungameid/261030          
if %steamlauncher1% == twd2 start steam://rungameid/261030           
if %steamlauncher1% == twdmini start steam://rungameid/429570        
if %steamlauncher1% == twdanf start steam://rungameid/536220         
if %steamlauncher1% == twdtfs start steam://rungameid/866800         
if %steamlauncher1% == twdfs start steam://rungameid/866800          
if %steamlauncher1% == twdvr start steam://rungameid/916840          
if %steamlauncher1% == twdtell start steam://rungameid/1449690       
if %steamlauncher1% == saints2 start steam://rungameid/9480          
if %steamlauncher1% == saints3 start steam://rungameid/55230         
if %steamlauncher1% == saints4 start steam://rungameid/206420        
if %steamlauncher1% == saintshell start steam://rungameid/301910     
if %steamlauncher1% == maifa start steam://rungameid/40990           
if %steamlauncher1% == maifa2c start steam://rungameid/50130         
if %steamlauncher1% == maifade start steam://rungameid/1030840       
if %steamlauncher1% == maifa2de start steam://rungameid/1030830      
if %steamlauncher1% == maifa3de start steam://rungameid/360430       
if %steamlauncher1% == fon start steam://rungameid/38400             
if %steamlauncher1% == fo2n start steam://rungameid/38410            
if %steamlauncher1% == fotbos start steam://rungameid/38420          
if %steamlauncher1% == fo3 start steam://rungameid/22300             
if %steamlauncher1% == fo3ye start steam://rungameid/22370           
if %steamlauncher1% == fonv start steam://rungameid/22380            
if %steamlauncher1% == fo4 start steam://rungameid/377160            
if %steamlauncher1% == fo4vr start steam://rungameid/611660          
if %steamlauncher1% == foshelter start steam://rungameid/588430      
if %steamlauncher1% == fo76 start steam://rungameid/1151340          
if %steamlauncher1% == trainsim2 start steam://rungameid/1282590     
if %steamlauncher1% == trainsim20 start steam://rungameid/530070     
if %steamlauncher1% == trainsim21 start steam://rungameid/24010      
if %steamlauncher1% == mprepper start steam://rungameid/761830       
if %steamlauncher1% == houseflip start steam://rungameid/613100      
if %steamlauncher1% == sod start steam://rungameid/241540            
if %steamlauncher1% == sodyose start steam://rungameid/329430        
if %steamlauncher1% == sod2 start steam://rungameid/495420           
if %steamlauncher1% == greenhell start steam://rungameid/815370      
if %steamlauncher1% == hitman start steam://rungameid/236870         
if %steamlauncher1% == hitman2 start steam://rungameid/863550        
if %steamlauncher1% == trop6 start steam://rungameid/492720          
if %steamlauncher1% == trop5 start steam://rungameid/245620          
if %steamlauncher1% == trop4 start steam://rungameid/57690           
if %steamlauncher1% == trop4mt start steam://rungameid/205630        
if %steamlauncher1% == trop3 start steam://rungameid/23490           
if %steamlauncher1% == tropr start steam://rungameid/33520           
if %steamlauncher1% == mkx start steam://rungameid/307780            
if %steamlauncher1% == mk11 start steam://rungameid/976310           
if %steamlauncher1% == steep start steam://rungameid/460920          
if %steamlauncher1% == pcbs start steam://rungameid/621060           
if %steamlauncher1% == cooksim start steam://rungameid/641320        
if %steamlauncher1% == dbfight start steam://rungameid/678950        
if %steamlauncher1% == dbzkak start steam://rungameid/851850         
if %steamlauncher1% == dbxeno start steam://rungameid/454650         
if %steamlauncher1% == nfl21 start steam://rungameid/1239520  
if %steamlauncher1% == yak0 start steam://rungameid/638970
if %steamlauncher1% == yakkiw start steam://rungameid/834530
if %steamlauncher1% == yakkiw2 start steam://rungameid/927380
if %steamlauncher1% == yak3 start steam://rungameid/1088710
if %steamlauncher1% == yak4 start steam://rungameid/1105500
if %steamlauncher1% == yak5 start steam://rungameid/1105510
if %steamlauncher1% == yak6 start steam://rungameid/1388590
if %steamlauncher1% == yaklad start steam://rungameid/1235140
if %steamlauncher1% == hrot start steam://rungameid/824600
if %steamlauncher1% == bmak start steam://rungameid/208650
if %steamlauncher1% == bmao start steam://rungameid/209000
if %steamlauncher1% == bmaa start steam://rungameid/35140
if %steamlauncher1% == bmac start steam://rungameid/200260
if %steamlauncher1% == bmts start steam://rungameid/498240
if %steamlauncher1% == bmvr start steam://rungameid/502820
if %steamlauncher1% == daygone start steam://rungameid/1259420
if %steamlauncher1% == untrusted start steam://rungameid/1502660
if %steamlauncher1% == untrust start steam://rungameid/1502660
if %steamlauncher1% == subbz start steam://rungameid/848450
if %steamlauncher1% == snowrun start steam://rungameid/1465360
if %steamlauncher1% == pwsi start steam://rungameid/1290000
if %steamlauncher1% == powerwash start steam://rungameid/1290000
if %steamlauncher1% == aerialkny start steam://rungameid/1323540
if %steamlauncher1% == akny start steam://rungameid/1323540
if %steamlauncher1% == gctycoon start steam://rungameid/1271850
if %steamlauncher1% == grandcasino start steam://rungameid/1271850
if %steamlauncher1% == lacuna start steam://rungameid/1364100
if %steamlauncher1% == mindscan start steam://rungameid/1389550
if %steamlauncher1% == justdie start steam://rungameid/979070
if %steamlauncher1% == frozenheim start steam://rungameid/1134100
if %steamlauncher1% == vampblood2 start steam://rungameid/532790
if %steamlauncher1% == birdcage start steam://rungameid/523770\
if %steamlauncher1% == fearmon start steam://rungameid/1068360
if %steamlauncher1% == prisonsim start steam://rungameid/1431610
if %steamlauncher1% == mayhemval start steam://rungameid/622680
if %steamlauncher1% == wildheart start steam://rungameid/1093290
if %steamlauncher1% == visfest start steam://rungameid/1406780
if %steamlauncher1% == projectd start steam://rungameid/1179280
if %steamlauncher1% == bumsim start steam://rungameid/855740
if %steamlauncher1% == knockcity start steam://rungameid/1301210
if %steamlauncher1% == litbiguy start steam://rungameid/1623320
if %steamlauncher1% == pixeltac start steam://rungameid/1601000
if %steamlauncher1% == dekon start steam://rungameid/1626140
if %steamlauncher1% == dinnerowl start steam://rungameid/1567420
if %steamlauncher1% == find21 start steam://rungameid/1357390
if %steamlauncher1% == 101 start steam://rungameid/1610610
if %steamlauncher1% == oparmstrong start steam://rungameid/1145490
if %steamlauncher1% == redblood start steam://rungameid/1506490
if %steamlauncher1% == mhl start steam://rungameid/1223440
if %steamlauncher1% == failwin start steam://rungameid/1147460
if %steamlauncher1% == towerbots start steam://rungameid/1629400
if %steamlauncher1% == boppio start steam://rungameid/1384030
if %steamlauncher1% == forza5 start steam://rungameid/1551360
if %steamlauncher1% == wwzam start steam://rungameid/699130
if %steamlauncher1% == tdb start steam://rungameid/1372880
if %steamlauncher1% == godwar start steam://rungameid/1593500
if %steamlauncher1% == gow start simsteam://rungameid/1593500
if %steamlauncher1% == legoskywalker start steam://rungameid/920210
if %steamlauncher1% == legosw start steam://rungameid/920210
if %steamlauncher1% == stalker2 start steam://rungameid/1643320
if %steamlauncher1% == slime2 start steam://rungameid/1657630
if %steamlauncher1% == nw start steam://rungameid/1063730
if %steamlauncher1% == bigfoot start steam://rungameid/509980
if %steamlauncher1% == haloinf start steam://rungameid/1240440
if %steamlauncher1% == choo start steam://rungameid/1766740
if %steamlauncher1% == silksong start steam://rungameid/1030300
if %steamlauncher1% == starfield start steam://rungameid/1716740
if %steamlauncher1% == star start steam://rungameid/1716740
if %steamlauncher1% == blood2 start steam://rungameid/532790
if %steamlauncher1% == wonder start steam://rungameid/1286680
if %steamlauncher1% == wonderland start steam://rungameid/1286680
if %steamlauncher1% == kerbal2 start steam://rungameid/954850
if %steamlauncher1% == space2 start steam://rungameid/954850
if %steamlauncher1% == frost2 start steam://rungameid/1601580
if %steamlauncher1% == punk2 start steam://rungameid/1601580
if %steamlauncher1% == wardark start steam://rungameid/1361210
if %steamlauncher1% == darktide start steam://rungameid/1361210
if %steamlauncher1% == heros3 start steam://rungameid/1677280
if %steamlauncher1% == coh3 start steam://rungameid/1677280
if %steamlauncher1% == atomic start steam://rungameid/668580
if %steamlauncher1% == manor start steam://rungameid/1363080
if %steamlauncher1% == cycle start steam://rungameid/868270
if %steamlauncher1% == uncharted start steam://rungameid/1659420
if %steamlauncher1% == unchar start steam://rungameid/1659420
if %steamlauncher1% == stray start steam://rungameid/1332010
if %steamlauncher1% == slim2 start steam://rungameid/1657630
if %steamlauncher1% == forspoken start steam://rungameid/1680880
if %steamlauncher1% == vic3 start steam://rungameid/529340
if %steamlauncher1% == hogwarts start steam://rungameid/990080
if %steamlauncher1% == twv start steam://rungameid/1121640
if %steamlauncher1% == wandering start steam://rungameid/1121640
if %steamlauncher1% == palsworld start steam://rungameid/1623730
if %steamlauncher1% == ixi start steam://rungameid/1113120
if %steamlauncher1% == void start steam://rungameid/1159690
if %steamlauncher1% == se5 start steam://rungameid/1029690
if %steamlauncher1% == smalland start steam://rungameid/768200
if %steamlauncher1% == farthest start steam://rungameid/1044720
if %steamlauncher1% == buildsim start steam://rungameid/1120320
if %steamlauncher1% == f1man start steam://rungameid/1708520
if %steamlauncher1% == gotham start steam://rungameid/1496790
if %steamlauncher1% == sons start steam://rungameid/1326470
if %steamlauncher1% == forest2 start steam://rungameid/1326470
if %steamlauncher1% == men2 start steam://rungameid/1128860
if %steamlauncher1% == quarry start steam://rungameid/1577120
if %steamlauncher1% == f122 start steam://rungameid/1692250
if %steamlauncher1% == hello2 start steam://rungameid/1321680
if %steamlauncher1% == human2 start steam://rungameid/1266700
if %steamlauncher1% == scpfiles start steam://rungameid/1718130
if %steamlauncher1% == scpf start steam://rungameid/1718130
if %steamlauncher1% == tma start steam://rungameid/1295920
if %steamlauncher1% == rooted start steam://rungameid/1940080
if %steamlauncher1% == es start steam://rungameid/1080020
if %steamlauncher1% == tsx start steam://rungameid/1588560
if %steamlauncher1% == ja3 start steam://rungameid/1084160
if %steamlauncher1% == taxi start steam://rungameid/1159390
if %steamlauncher1% == taxisim start steam://rungameid/1159390
if %steamlauncher1% == invincible start steam://rungameid/731040
if %steamlauncher1% == bean start steam://rungameid/1597080
if %steamlauncher1% == rds start steam://rungameid/1747470
if %steamlauncher1% == ghvr start steam://rungameid/1782330
if %steamlauncher1% == bonelab start steam://rungameid/1592190
if %steamlauncher1% == rere start steam://rungameid/1236300
if %steamlauncher1% == mfn start steam://rungameid/1574260
if %steamlauncher1% == recon tart steam://rungameid/1249520
if %steamlauncher1% == csc start steam://rungameid/1040200
if %steamlauncher1% == bricktales start steam://rungameid/1898290
if %steamlauncher1% == tsic start steam://rungameid/1593010
if %steamlauncher1% == valhalla start steam://rungameid/1409830
if %steamlauncher1% == unholy start steam://rungameid/817020
if %steamlauncher1% == simrail start steam://rungameid/1422130
if %steamlauncher1% == wwhr start steam://rungameid/1341290
if %steamlauncher1% == baldi start steam://rungameid/1712830
if %steamlauncher1% == gold start steam://rungameid/1082450
if %steamlauncher1% == cut2 start steam://rungameid/1092430
if %steamlauncher1% == sser start steam://rungameid/518920
if %steamlauncher1% == stanley start steam://rungameid/1703340
if %steamlauncher1% == medium start steam://rungameid/1293160
if %steamlauncher1% == elden start steam://rungameid/1245620
if %steamlauncher1% == crab start steam://rungameid/774801
if %steamlauncher1% == soc start steam://rungameid/867210
if %steamlauncher1% == mgh start steam://rungameid/915810
if %steamlauncher1% == death start steam://rungameid/1850570
if %steamlauncher1% == hotdog start steam://rungameid/450540
echo.
echo [40;32mattempting game launch using code [40;37m"[40;34m%steamlauncher1%[40;37m"[40;37m
ping localhost -n 5 -w 1.0>nul
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
echo [to return to [40;31msteam[40;37m launcher press [40;32mEnter[40;37m and wait 5 seconds]
echo.
echo ╔═[[40;31mRun By ID[40;37m]
set /p runbyid1= ╚═══➤ [40;31m 
echo.
start steam://rungameid/%runbyid1%
echo [40;32mattempting game launch using code [40;37m"[40;31m%runbyid1%[40;37m"[40;37m
ping localhost -n 5 -w 1.0>nul
goto steamlauncher1








:help1
echo.
echo [40;37m╔════════════════════════════════════════════════════════════════════════╗
echo ║ to launch simply type the code from option 1 (available games codes).  ║
echo ╚════════════════════════════════════════════════════════════════════════╝
echo ╔════════════════════════════════════════════════════════╗
echo ║ would you like to view the available game codes? (y/n) ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo ╔═[[40;31mHelp[40;37m]
set /p help1= ╚═══➤ [40;31m 
if %help1% == y goto yeshelp1
if %help1% == n goto nohelp1
echo please type either "y" or "n"
ping localhost -n 5 -w 1.0>nul
cls
goto help1








:yeshelp1
echo.
echo opening game list...
ping localhost -n 2 -w 1.0>nul
start https://pastebin.com/raw/VcNvdFd6
goto steamlauncher1








:nohelp1
echo.
echo [40;37mreturing to game launcher...
ping localhost -n 2 -w 1.0>nul
goto steamlauncher1








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
ping localhost -n 4 -w 1.0>nul
Exit