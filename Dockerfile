FROM mjh8888/xvfb
USER root
RUN apt-get update
RUN apt-get install -y python-pip python-dev libpq-dev
RUN pip install virtualenv
RUN chmod 777 /usr/local/bin/chromedriver
