::RECORE-DEV
::BeginOFCORE
:: 1，2关机 3.关网4开网5bat编辑器
@echo off
color 6F
set version=CCM 13.1.0 RACASKNM
set buildtype=Stable
set coreversion=A1 RACORTE
set coretype=RECORE
goto shouye1
:RECOR0
echo => XZV.txt
echo 13.1_221120>XZV.txt
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/nowv.txt', 'nowv.txt')"
fc nowv.txt xzv.txt
::下载并对比版本号
if errorlevel==1 goto upd
::不一致跳转至更新页面
goto update
::update
del /s /q XZV.txt
del /s /q nowv.txt
echo  版本不一致，请自行前往官网下载!
pause
goto shouye1
:RECOR1
cls
shutdown -s -t 1
pause
:RECOR2
cls
sildetoshutdown
pause
:RECOR3
netsh interface set interface "以太网" disabled
netsh interface set interface "网络" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
netsh interface set interface "本地连接" disabled
pause
:RECOR4
netsh interface set interface "以太网" enabled
netsh interface set interface "网络" enabled
netsh interface set interface "WLAN" enabled
netsh interface set interface "WIFI" enabled
netsh interface set interface "本地连接" enabled
:RECOR5
cls
title Bat Editor
echo 欢迎来到bat编辑器
:newproject
cls
echo 请命名您的项目
set /p projectname= 在此输入项目名
echo @echo off>%projectname%.bat
:startedit
cls
echo 您现在要做什么?
set /p aakk= 1.说一句话 2.华锐杀手功能包 3.加入选择 4.定义功能
if /i '%aakk%'=='1' goto sayec
if /i '%aakk%'=='2' goto hkgnb
if /i '%aakk%'=='3' goto addchoice
if /i '%aakk%'=='4' goto addfunction
:sayec
echo 您要说什么?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo 这将添加华锐杀手的功能到您的项目里，确定吗？
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo Done
pause
goto startedit
:addchoice
echo 您要问什么?
set /p Ques= 
echo 您的变量名?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo 是否需要在添加一个判断？
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
goto asking
goto ENOS
:ENOS
echo Done
pause
goto startedit
:addfunction
echo 请输入你要叫这个功能的名字。
set /p funame= 
echo :%funame%>>%projectname%.bat
echo Done
pause
goto startedit
:RECOR6
cls
::设置杀进程次数killcs为0
set  killcs=0
:startkill
echo 第%killcs%次杀进程!
taskkill /f /im RedAgent.exe
::杀进程成功，次数+1
set /a killcs+=1
::返回开始杀进程
goto startkill
:RECOR7
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f
:RECOR8
@echo off&setlocal enabledelayedexpansion
set li0=┌───────────────────┐
set li1=│┌┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┐│1
for /l %%a in (2,1,18) do (set li%%a=│├┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┤│%%a)
set li19=│└┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┘│19
set li20=└───────────────────┘
set li21=   A B C D E F G H I J K L M N O P Q R S
for %%a in (%li21%) do (set/a .+=1,%%a=.&set z!.!=%%a)
set z0= &set z20= &set "z21= "

set li5=!li5!   五 棋 子 人 机 对 战
set li7=!li7!        批 处 理
set li9=!li9!   电 脑 水 平 中 等
set li12=!li12!  由 netbenton 编写完成
set li14=!li14!  棋盘设计参照了 batman
title   批处理五子棋


set str=###################
set .=0
for /l %%a in (1,1,19) do (
        set he%%a=!str!&set sh%%a=!str!
        for /l %%b in (1,1,19) do set [%%a.%%b=0
)

set .=33
for /l %%a in (5,1,19) do (
        set pi%%a=!str:~,%%a!&set ni%%a=!str:~,%%a!
        set pi!.!=!str:~,%%a!&set ni!.!=!str:~,%%a!
        set/a .-=1
)


set ●=○&set a●=电脑
set ○=●&set a○=玩家

::设置电脑IQ
set idea=@@@@#1 #@@@@5 @#@@@4 @@@#@2 @@#@@3 $#$$$4 $$#$$3 $$$#$2 $$$$#1 #$$$$5 #$$#$#3 #$#$$#4 #@@@##2 ##@@@#5 #@@#@#3 #@#@@#4 #@@@#1
set idea=!idea! ##@@@4 @@@##2 ##$$$#5 #$$$##2 #$$$#1 ##@@#4 #@@##2 ##$$#4 #$$##2 #$#$#3 @@###3 ###@@3
set idea=!idea! ##@##2 ###@#3 #@###3 @####4 ####@2 ##############7 ###########6 ########4 #####3 ####2
set ttr=!idea:@=●!&set ttr=!ttr:$=○!
for %%a in (!ttr!) do (set var=%%a&set !var:~,-1!=!var:~-1!&set idea=!idea! !var:~,-1!)
set ttr=
::设置电脑IQ

:restart
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
setlocal enabledelayedexpansion
set li21=!li21!      reboot重新开始,exit退出。
set /p var=选择谁先下[ W,玩家  D,电脑  Q,退出 ]:
if /i "!var!" equ "Q" goto :eof
if /i "!var!" equ "W" (set zhi=●) else (set zhi=○)
echo.


:loop
if %zhi% equ ● goto :men
set .=&set put1=
for %%a in (!idea!) do (
        for %%b in (he sh) do (
                for /l %%c in (1,1,19) do (
                        if "!%%b%%c:%%a=!" neq "!%%b%%c!" set/a .+=1&set put!.!=%%b %%c
        )        )
        for %%b in (pi ni) do (
                for /l %%c in (5,1,33) do (
                        if "!%%b%%c:%%a=!" neq "!%%b%%c!" set/a .+=1&set put!.!=%%b %%c
        )        )
if defined put1 set put=%%a&goto :get
)

echo. 已经和棋了
pause
goto :restart

:men
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set /p user=[列前，行后]:
echo.
if "!user!" equ "reboot" endlocal&goto :restart
if "!user!" equ "exit" exit
set/a pos=!user:~0,1!,poh=!user:~1,2!,var=pos-1 2>nul
if not defined [!poh!.!pos! echo 输入点不存在&goto :men
if "!he%poh%:~%var%,1!" neq "#" echo 该点已经有子&goto men
goto :getok

:get
set /a .=!random!%%.+1
set put=!put%.%! !put!
::随机取最佳的走法

for /f "tokens=1-3" %%a in ("%put%") do (
        set var=!%%a%%b:*%%c=!srqponmlkjihgfedcba0
        set/a var=!var:~19,1!+%%c
        if "%%a" equ "he" (set/a poh=%%b,pos=20-var)
        if "%%a" equ "sh" (set/a poh=20-var,pos=%%b)
        if %%b lss 19 (set/a var=%%b-var+1) else (set/a var=38-%%b-var+1)
        if "%%a" equ "pi" (if %%b lss 19 (set/a pos=var,poh=%%b-var+1) else (set/a poh=20-var,pos=%%b-19+var))
        if "%%a" equ "ni" (if %%b lss 19 (set/a pos=var,poh=19-%%b+var) else (set/a poh=var,pos=%%b-19+var))
)
echo  电脑最后下在：!z%pos%!!z%poh%!(%poh%)

:getok
set zhi=!%zhi%!&set win=!zhi!!zhi!!zhi!!zhi!!zhi!
set/a piph=poh+pos-1,lips=pos+1,niph=19+pos-poh

if !piph! lss 19 (set/a pips=pos) else (set/a pips=20-poh)
if !niph! lss 19 (set/a nips=pos) else (set/a nips=poh)


for %%a in ("li!poh! !lips!" "he!poh! !pos!" "sh!pos! !poh!" "pi!piph! !pips!" "ni!niph! !nips!") do (
        for /f "tokens=1,2" %%b in (%%a) do (
                if defined %%b (
                        set/a .=%%c-1
                        for %%d in (!.!) do (set %%b=!%%b:~0,%%d!%zhi%!%%b:~%%c!)
                if "!%%b:%win%=!" neq "!%%b!" set win=y
                )
        )
)
set/a asc%zhi%+=1
if !win! neq y goto :loop
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set/p=   !a%zhi%! %zhi%子 第!asc%zhi%!手  胜出     <nul
pause
endlocal&goto :restart
:RECOR9
cls
echo    __________   __________   ___      __
echo    /        /   /        /   /  \    /   \
echo   /   -------   /   -------   / / \ \  / /\  \
echo   /   /       /   /        / /   \_\/_/  \  \
echo  /   /______ /   /_______  / /           \  \
echo  /__________/___________/ /_/             \__\
echo CCM
echo 当前版本号 %version%
echo 编译时间 %builddate%
echo 内核 %codetype%
echo 内核版本 %buildtype%
echo 
pause
:RECOR10
cls
set /p q=输入ip或网址:
:dddstart
::死亡之ping
cls
ping %q% -t -l 65500
goto shouye1
:RECOR11
cls
mountvol c:\ /d
pause
goto shouye1
::beginningofmain
:shouye1
cls
