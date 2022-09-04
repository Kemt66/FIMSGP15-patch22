@echo off

if not exist "%cd%\backup" mkdir 	"%cd%\backup"

if not exist "%cd%\backup\DataPl" mkdir 	"%cd%\backup\DataPl"
robocopy "%cd%\DW\DataPl" 			"%cd%\backup\DataPl" /s
if not exist "%cd%\backup\DataEn" mkdir 	"%cd%\backup\DataEn"
robocopy "%cd%\DW\DataEn" 			"%cd%\backup\DataEn" /s

robocopy "%cd%\DW\ " "%cd%\backup" Data0.pak /s

robocopy "%cd%\temp" "%cd%" /s
@RD /S /Q "%cd%\temp"

del "%cd%\run.bat" /q