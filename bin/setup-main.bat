@setlocal
@echo %myRoot%\gnuWin32
@wget --help 2>>wgeterr.log
@del /q wgeterr.log
@unzip --help

