@echo off
cd /d %~dp0
if exist rom.bin move /y rom.bin rom.prev.bin >NUL
Tools\Windows-x86\asw -xx -q -A -L -U -E -i . main.asm
Tools\Windows-x86\p2bin main.p rom.bin
del main.p
pause