FROM python:3.8

COPY . /app
RUN pip3 install -r /app/requirements.txt

WORKDIR /app/data

CMD jupyter lab --ip=0.0.0.0 --port=8080 --no-browser --allow-root
