@echo off

RD /S /Q "%cd%\DW\DataPl"
RD /S /Q "%cd%\DW\DataEn"

robocopy "%cd%\backup\DataPl" "%cd%\DW\DataPl" /s
robocopy "%cd%\backup\DataEn" "%cd%\DW\DataEn" /s
robocopy "%cd%\backup\ " "%cd%\DW" Data0.pak /s

RD /S /Q "%cd%\backup"
del "%cd%\remove.bat" /q
