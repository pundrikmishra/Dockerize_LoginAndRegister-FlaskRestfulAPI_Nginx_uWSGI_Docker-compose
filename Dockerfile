# # FROM alpine:latest
# FROM ubuntu

# RUN apt-get add --no-cache python3-dev \           ##In alpine we use apk to install things whereas in ubuntu we use apt-get to install things
#     && pip3 install --upgrade pip

FROM python:3
# FROM python:3.7.2-stretch
RUN apt-get update
RUN apt-get install python
RUN apt-get update -y
RUN apt-get install -y libgirepository1.0-dev
RUN apt-get install -y apt-utils && apt-get install -y curl
# RUN apt-get install -y python3-dev 
RUN pip install --upgrade pip
# RUN pip install 
WORKDIR /appmain
COPY . /appmain
# RUN pip install -y libgirepository1.0-dev
# RUN pip3 --no-cache-dir install -r requirements.txt
RUN pip install -r /appmain/requirements.txt
#RUN pip install --user --no-cache-dir -r requirements.txt
#EXPOSE 5000
#ENTRYPOINT ["python3"]
#CMD ["python", "main.py"]

# RUN chmod +x /appmain/entrypoint.sh   ## You can also use this line instead of below line and if you use this line then, uncomment entrypoint.sh file and in also  uncomment entrypoint in docker-compose.yml file
CMD ["uwsgi", "app.ini"]

