#!/bin/bash

source django_env/bin/activate

cd /var/lib/jenkins/workspace/django_welcome_ci_cd/


python3 -m pip install django
python3 manage.py makemigrations
python3 manage.py migrate 


echo "migrations done"


sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/


echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "gunicorn has been started"

sudo systemctl status gunicorn