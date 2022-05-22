# pi-spark
A Spark running on a raspberry pi cluster. 

## Run Spark on rpi cluster

* on master pi
`docker run -p 8080:8080 --name spark-master guanyili/spark-master:pi-0.0.1`

* on worker pi
`docker run -p 8081:8081 -e MASTER_CONTAINER_NAME=hadoop1 --name spark-worker guanyili/spark-worker:pi-0.0.1`
