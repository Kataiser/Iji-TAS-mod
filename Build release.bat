@echo off
del /q "Iji-TAS-mod.zip"
rd /s /q build_target\
md build_target
md build_target\inputs
md build_target\savestates

xcopy iji_17_tas.exe build_target\ /v /f
xcopy LICENSE build_target\ /v /f
xcopy README.md build_target\ /v /f
rename build_target\README.md README.txt
xcopy "kill iji.bat" build_target\ /v /f
xcopy "%~dp0\inputs" "%~dp0\build_target\inputs\" /e /q /v /f

echo.
echo Building "Iji-TAS-mod.zip"...
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::CreateFromDirectory('build_target', 'Iji-TAS-mod.zip'); }"
echo Done.
pause