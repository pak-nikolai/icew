#############################
#   2020.03.17
#   paknv   surgut sng
#   version 0.1a
#############################
yum update -y
yum upgrade -y
yum install gcc -y
yum install epel-release -y
yum install python-pip -y
yum install python3 -y
pip install --upgrade pip
yum install git -y
adduser user
echo "userpassword2" | passwd --stdin user
adduser nikolyp
echo "userpassword2" | passwd --stdin nikolayp
yum install -y nano
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io --no-best
usermod -aG docker $(whoami)
systemctl enable docker.service
systemctl start docker.service
pip3 install -y docker-compose
yum upgrade python*

echo ''
docker-compose -v
echo ''
echo "thats all"
echo ''