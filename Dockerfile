FROM python:3.6
WORKDIR /app
COPY demo/ /app
RUN pip install -r requirements.txt
ENTRYPOINT [ "gunicorn", "demo.wsgi", "-w", "4"]