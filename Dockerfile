# Specify the OS we are using to run our web app from
FROM ubuntu

# Commands to install our dependencies
RUN apt-get update

# Install Python
RUN apt-get install python -y

# Install Python Pip
RUN apt-get install python-pip -y

# Copy our Flask python file and the home.html
COPY app.py /opt/
COPY home.html /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

