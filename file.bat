@echo off
set filstig=%1
if exist %filstig% (echo .)
if exist  %filstig%\ (
echo klg
) else (
echo fil)
for /f "Tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%` ) do (
if "kansio(ta)"=="%%b" (
set Antal_mappar=%%a
set Antal_bytes=%%c
)
if "tiedosto(a)"=="%%b" (
set Antal_filer=%%a
set Antal_bytes2=%%c
)
)
echo %Antal_mappar% map
echo %Antal_filer% fil
echo %Antal_bytes2% byt gay