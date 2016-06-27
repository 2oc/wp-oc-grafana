FROM grafana/grafana:latest

EXPOSE 3000

RUN mkdir /grafana && \
chmod -R a+rw /etc/passwd

COPY ./run.sh /run.sh

ENTRYPOINT ["/run.sh"]

WORKDIR /var/lib/grafana
