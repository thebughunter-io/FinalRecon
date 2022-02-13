FROM python:3.9.0
WORKDIR /home/finalrecon
ENV PYTHON_VERSION=3.9 
RUN apt-get update && apt-get -y install libpq-dev gcc 
COPY . .
RUN pip install wheel
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["bash"]
