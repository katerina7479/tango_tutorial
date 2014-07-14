#!/usr/bin/env bash

apt-get update
apt-get install -y git
apt-get install -y python-pip
#gem install sass
pip install Django==1.6.5
cd projects
pip install -r requirements.txt
#git submodule init
#git submodule update
#python manage.py syncdb
#python manage.py migrate --delete-ghost-migrations

#cd dashboardwebapp
#npm install
#bower install
echo "Finished!"