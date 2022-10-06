#Dockerfile


FROM python:3.10-slim-buster
ADD . /smartapp
WORKDIR /smartapp
COPY .  .
RUN pip install flask
CMD [ "python", "./main.py" ]

