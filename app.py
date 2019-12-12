import time


import os

from flask import Flask



app = Flask(__name__)



cnt = 0

@app.route('/')

def hello():
    global cnt 
    cnt += 1
    return 'Hello World! I have been seen {} times.\n'.format(cnt)


if __name__ == '__main__':
      app.run(host='0.0.0.0', port=os.environ['PORT'])
