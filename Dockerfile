FROM python:3.9
ENV PYTHONUNBUFFERED=1
WORKDIR /django1
COPY requirements.txt /django1/
RUN pip install -r requirements.txt
COPY . /django1/
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
