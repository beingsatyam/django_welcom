

if [-d "env"]
then
 echo "python env exists"
else
 python3 -m venv django_env
fi

echo $PWD
source django_env/bin/activate

pip3 install -r requirements.txt


if [-d "logs"]
then
 echo "logs folder exists"
else
 mkdir logs
 touch logs/error.log logs/access.log
fi


sudo chmod -R 777 logs
echo "envsetup completed"
