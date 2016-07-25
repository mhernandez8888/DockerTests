FROM robcherry/docker-chromedriver
USER root
RUN apt-get update
RUN apt-get install -y python-pip python-dev libpq-dev
# Install Selenium
RUN mkdir -p /opt/selenium
RUN wget --no-verbose -O /opt/selenium/selenium-server-standalone-2.43.1.jar http://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar
RUN ln -fs /opt/selenium/selenium-server-standalone-2.43.1.jar /opt/selenium/selenium-server-standalone.jar

RUN pip install virtualenv

