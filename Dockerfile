FROM python:3.7-alpine

WORKDIR /code

ENV FLASK_APP app.py

EXPOSE 5000
EXPOSE $PORT

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
