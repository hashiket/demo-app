FROM python:3.11

WORKDIR /app

COPY requirements.txt /app
COPY demoapp /app

RUN pip install -r requirements.txt 

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]