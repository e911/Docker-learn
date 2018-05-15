FROM python:3.5.2

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

ADD . /app

EXPOSE 80

ENV NAME world

CMD ["python3", "app.py"]


