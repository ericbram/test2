FROM python:3.9.12

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY . .

EXPOSE 5000

CMD ["python3", "/app/buildserver/app.py"]
