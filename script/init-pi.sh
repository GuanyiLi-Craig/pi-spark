apt-get update
apt-get upgrade -y
apt-get install -y vim
apt-get install -y git
mkdir /data
mkdir /data/spark
mkdir /data/spark/workspace
chmod 777 -R /data
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker pi
docker version
# log out and back to check the permission

