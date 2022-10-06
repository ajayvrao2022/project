#Dockerfile


FROM python:3.10-slim-buster
ADD . /smartapp
WORKDIR /smartapp
COPY .  .
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]

