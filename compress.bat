@echo off
cls
set w=D:\Workspace\gameclient\Obfuscate
echo."swf obfuscate&compress tool by hoothin"
set p=%cd%
echo.=======================================================
echo.obfuscate......
echo.=======================================================
copy /Y OpenFLGameProject.swf "%w%\OpenFLGameProject.swf"
cd "%w%"
obfuscate
echo.
echo.----------socket class obfuscated completely!
echo.
sob --obfuscate-mask n target.swf
echo.
echo.----------namespace class obfuscated completely!
echo.
del OpenFLGameProject.swf
del target.swf
echo.=======================================================
echo.compress......
echo.=======================================================
swf2lzma obfuscated_target.swf
echo.
echo.----------compressed completely!
echo.
cd %p%
move /Y %w%\obfuscated_target.swf OpenFLGameProject.swf
pause