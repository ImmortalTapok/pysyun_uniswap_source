FROM python:3.9-slim-buster

WORKDIR /application/python_uniswap_source

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y git

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py ./

CMD ["python", "main.py"]
