@for /F "delims=" %%I in ("%~dp0.") do @set my_root=%%~fI
set SPARK_HOME=%my_root%\spark-2.3.0-bin-hadoop2.7
set HADOOP_HOME=%my_root%\hadoop-3.0.0
set PYSPARK_DRIVER_PYTHON=jupyter
set PYSPARK_DRIVER_PYTHON_OPTS='notebook'

cmd /K %SPARK_HOME%\bin\pyspark