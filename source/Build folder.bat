@echo off

rd /s /q iji_17_tas_gm81
java -jar "GmkSplitter v0.17\gmksplit.jar" iji_17_tas.gm81 iji_17_tas_gm81
pause