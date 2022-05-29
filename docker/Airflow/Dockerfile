FROM debian

RUN apt update
RUN apt upgrade -y
# Install Scala
RUN apt install -y python3 python3-pip
RUN pip3 install \
    apache-airflow[postgres] \
    celery \
    cryptography

RUN airflow db init