FROM robcherry/docker-selenium
USER root
RUN apt-get update
RUN apt-get install -y python-pip python-dev libpq-dev
RUN pip install virtualenv
# Default configuration
ENV DISPLAY :20.0
ENV SCREEN_GEOMETRY "1440x900x24"
ENV CHROMEDRIVER_PORT 4444
ENV CHROMEDRIVER_WHITELISTED_IPS "127.0.0.1"

EXPOSE 4444

VOLUME [ "/var/log/supervisor" ]

CMD ["/usr/local/bin/supervisord", "-c", "/etc/supervisord.conf"]

