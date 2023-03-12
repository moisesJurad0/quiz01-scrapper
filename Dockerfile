FROM selenium/standalone-chrome
#FROM selenium/standalone-chrome:latest
#FROM selenium/standalone-chrome:4.8.1-20230306

WORKDIR /myapp
COPY . .

USER root
RUN apt-get update && apt-get install python3-distutils -y
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install -r requirements.txt







