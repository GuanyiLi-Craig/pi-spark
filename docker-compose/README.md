# Docker compose running on PC

This docker compose is for POC on PC. 

## Start docker compose

`docker-compose up`

## Test example code

exec into spark-master comtainer

`docker exec -it spark-master /bin/bash`

execute the pi calculation

`spark-submit --master spark://spark-master:7077 --deploy-mode cluster --class org.apache.spark.examples.SparkPi /usr/local/spark-3.2.1-bin-hadoop3.2/examples/jars/spark-examples_2.12-3.2.1.jar 1000`

to check result, open a browser and go to

http://localhost:8080

find the drivr id, such as `driver-20220523214108-0000`

then go to page 

http://localhost:8081/logPage/?driverId=\<drivr id\>&logType=stdout

or

http://localhost:8082/logPage/?driverId=\<drivr id\>&logType=stdout

it should show 

`Pi is roughly 3.141567391415674`

## Shut down docker compose

`docker-compose down`