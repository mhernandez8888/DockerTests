FROM markadams/chromium-xvfb

RUN apt-get update && \
    apt-get install -y python-pip python-dev libpq-dev curl unzip libgconf-2-4
    
RUN pip install virtualenv 

RUN pip install pytest selenium

ENV CHROMEDRIVER_VERSION 2.19

RUN curl -SLO "https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip" \
  && unzip "chromedriver_linux64.zip" -d /usr/local/bin \
  && rm "chromedriver_linux64.zip"

WORKDIR /usr/src/app

CMD py.test

ONBUILD COPY requirements.txt /usr/src/app/requirements.txt
ONBUILD RUN pip install -r requirements.txt
ONBUILD COPY . /usr/src/app
