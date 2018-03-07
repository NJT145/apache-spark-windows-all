@setlocal
@title setup
@prompt setupTest$G
@for /F "delims=" %%I in ("%~dp0.") do @set myRoot=%%~fI
@set PATH=%myRoot%\gnuWin32\bin;%PATH%
@cmd /k %myRoot%\bin\setup-main.bat