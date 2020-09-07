pip install flask
pip install flask_restful
pip install flask_pymongo
pip install docker-compose
python -m venv venv         ### 2nd venv is name of file, and you give any name you like
source venv/bin/activate          ### To activate venv file 
sudo apt install libgirepository1.0-dev
RUN pip install --upgrade pip
python3 -m venv env
pip install flask uwsgi 
pip list
pip freeze > requirements.txt     ## It is used to create requiement file
docker-compose config
docker-compose build
docker-compose up
docker-compose down
docker-compose up --build

To find your system IP address:
                ip address
                nmcli -p device show
                hostname -I

To stop and delete all images and container:-
                            docker stop $(docker ps -aq)

                            docker rm $(docker ps -aq)

                            docker rmi $(docker images)