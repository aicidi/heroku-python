FROM ubuntu:18.04 

WORKDIR /code

EXPOSE 5000
EXPOSE $PORT

RUN apt-get update && apt-get install -y python3 python3-pip redis-server

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "app.py"]
