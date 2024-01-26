FROM python:3.9.18

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY buildserver .

EXPOSE 5000

# TODO - Run a WSGI server in production mode instead
ENTRYPOINT ["python3", "/app/app.py"]
