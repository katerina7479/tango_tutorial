#!/usr/bin/env bash

# base
apt-get update
apt-get upgrade

# git
apt-get install -y git

# package managers
apt-get install -y python-pip

cd projects
pip install -r requirements.txt

apt-get install -y libpq-dev python-dev
apt-get install -y postgresql postgresql-contrib

# nginx
apt-get install -y nginx

#POSTGRE_VERSION=9.3
#sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/$POSTGRE_VERSION/main/postgresql.conf
#echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/$POSTGRE_VERSION/main/pg_hba.conf

sudo service postgresql start
sudo -u postgres psql -c "CREATE ROLE root LOGIN UNENCRYPTED PASSWORD 'root' SUPERUSER;"
sudo -u postgres psql -c "CREATE DATABASE database"
sudo service postgresql restart

pip install psycopg2==2.5.3
cd tango

echo "Finished!"