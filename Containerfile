FROM registry.access.redhat.com/ubi9/python-311:latest


COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt
COPY server.py /app/server.py

EXPOSE 5000

CMD ["python", "/app/server.py"]