@echo off

set /p gm81_path="Enter path to iji_17_tas.gm81: "

rd /s /q iji_17_tas_gm81
java -jar "GmkSplitter v0.17\gmksplit.jar" "%gm81_path%" iji_17_tas_gm81
pause