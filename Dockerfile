FROM ubuntu
WORKDIR /app
COPY . /app
RUN apt-get update
RUN ["apt-get", "-y", "install", "python-pip", "python-dev", "build-essential"]
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 9090
CMD ["python", "color.py"]
