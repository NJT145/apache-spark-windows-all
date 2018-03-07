@setlocal
@for /F "delims=" %%I in ("%~dp0..") do @set myRoot=%%~fI
@echo %myRoot%


