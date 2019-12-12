FROM ubuntu:18.04 

WORKDIR /code

EXPOSE 5000
EXPOSE $PORT

RUN apt-get update && apt-get install -y gcc make python3 python3-pip python3-dev wget redis-server

COPY requirements.txt requirements.txt
#RUN wget http://download.redis.io/redis-stable.tar.gz && tar xvzf redis-stable.tar.gz && cd redis-stable && make -j4 && make install && cd ..
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "app.py"]
