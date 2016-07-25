FROM robcherry/docker-chromedriver
USER root
RUN echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
RUN apt-get update
RUN apt-get install firefox-mozilla-build
RUN apt-get install -y python-pip python-dev libpq-dev
# Install Selenium
RUN mkdir -p /opt/selenium
RUN wget --no-verbose -O /opt/selenium/selenium-server-standalone-2.43.1.jar http://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar
RUN ln -fs /opt/selenium/selenium-server-standalone-2.43.1.jar /opt/selenium/selenium-server-standalone.jar

RUN pip install virtualenv

