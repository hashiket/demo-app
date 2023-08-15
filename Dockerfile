FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY demoapp /app

RUN pip install -r requirements.txt 

COPY ..

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]