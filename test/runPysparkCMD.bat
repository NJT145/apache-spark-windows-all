@echo OFF

@setlocal

@echo ...
@echo OFF

@for /F "delims=" %%I in ("%~dp0.") do @set my_root=%%~fI
@For /F "tokens=*" %%i in ("%my_root%") Do Set my_root=%%~dpnxsi

@set SPARK_HOME=%my_root%\spark-2.3.0-bin-hadoop2.7
@echo SPARK_HOME=%my_root%\spark-2.3.0-bin-hadoop2.7
@echo ...
@echo OFF

@set HADOOP_HOME=%my_root%\winutils-master\hadoop-3.0.0
@echo HADOOP_HOME=%my_root%\winutils-master\hadoop-3.0.0
@echo ...
@echo OFF

@REM set PYSPARK_DRIVER_PYTHON=jupyter
@REM echo PYSPARK_DRIVER_PYTHON=jupyter
@REM echo ...
@REM echo OFF

@REM set PYSPARK_DRIVER_PYTHON_OPTS='notebook'
@REM echo PYSPARK_DRIVER_PYTHON_OPTS='notebook'
@REM echo ...
@REM echo OFF

@echo running %SPARK_HOME%\bin\pyspark
@echo OFF
@cmd /K %SPARK_HOME%\bin\pyspark
@endlocal