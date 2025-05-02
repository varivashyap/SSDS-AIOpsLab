FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY . /app/

# Install setuptools explicitly
RUN pip install --upgrade setuptools

RUN chmod -R 755 /app

RUN pip install --upgrade pip && pip install -r requirements.txt

# Dockerfile snippet
COPY kubeconfig /root/.kube/config
ENV KUBECONFIG=/root/.kube/config

ENV PYTHONUNBUFFERED=1

CMD ["python", "main.py"]
