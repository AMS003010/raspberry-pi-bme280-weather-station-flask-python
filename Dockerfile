FROM python:3

WORKDIR /app

ENV FLASK_APP=app.py

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]