FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY demoapp /app

RUN pip install -r requirements.txt 

COPY ..

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]