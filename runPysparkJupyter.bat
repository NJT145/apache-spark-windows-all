@setlocal
@echo ...

@for /F "delims=" %%I in ("%~dp0.") do @set my_root=%%~fI

@set SPARK_HOME=%my_root%\spark-2.3.0-bin-hadoop2.7
@echo SPARK_HOME=%my_root%\spark-2.3.0-bin-hadoop2.7
@echo ...

@set HADOOP_HOME=%my_root%\hadoop-3.0.0
@echo HADOOP_HOME=%my_root%\hadoop-3.0.0
@echo ...

@set PYSPARK_DRIVER_PYTHON=jupyter
@echo PYSPARK_DRIVER_PYTHON=jupyter
@echo ...

@set PYSPARK_DRIVER_PYTHON_OPTS='notebook'
@echo PYSPARK_DRIVER_PYTHON_OPTS='notebook'
@echo ...

@echo running %SPARK_HOME%\bin\pyspark
@cmd /K %SPARK_HOME%\bin\pyspark
@endlocal