# pi-spark
A Spark running on a raspberry pi cluster. 

## Run Spark on rpi cluster

* on master pi
`docker run -d -p 8080:8080 -p 7077:7077 --name spark-master guanyili/spark-master:pi-0.0.1`

* on worker pi
`docker run -d -p 8081:8081 -e MASTER_CONTAINER_NAME=<master-ip> --name spark-worker guanyili/spark-worker:pi-0.0.1`
