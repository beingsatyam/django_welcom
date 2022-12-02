#!/bin/bash

sudo cp -rf app.conf /etc/nginx/conf.d
chmod 710 /var/lib/jenkins/workspace/django_welcome_ci_cd/

sudo nginx -t 

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl start nginx
