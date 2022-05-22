apt-get update
apt-get upgrade -y
apt-get install -y vim
apt-get install -y git
mkdir /data
chmod 777 /data
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker pi
docker version
# log out and back to check the permission

