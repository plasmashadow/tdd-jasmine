FROM python:3.6
ENV APPMODE=default
WORKDIR /app
COPY demo/ /app
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manange.py migrate
ENTRYPOINT [ "gunicorn", "demo.wsgi", "-w", 4]