ECHO OFF
setlocal enabledelayedexpansion

set STEAMAPPS=C:\Program Files (x86)\Steam\steamapps\common

set CS2=%STEAMAPPS%\Counter-Strike Global Offensive\game\csgo\cfg\
set CSS=%STEAMAPPS%\Counter-Strike Source\cstrike\cfg\
set DOTA2=%STEAMAPPS%\dota 2 beta\game\dota\cfg\


if exist "%CS2%" (
	echo Copied CS2
	xcopy cs2\autoexec.cfg "%CS2%" /Y
) else (
	echo no cs2
)

if exist "%CSS%" (
	echo Copied CSS
	xcopy /Y css\autoexec.cfg "%CSS%"
) else (
	echo no css
)

if exist "%DOTA2%" (
	echo Copied Dota 2
	xcopy /Y dota2\autoexec.cfg "%DOTA2%"
) else (
	echo no dota2
)

echo DONE
pause
