FROM grafana/grafana:latest

EXPOSE 3000

RUN mkdir /grafana && \
chown -R root:root /var/lib/grafana && chmod -R a+rw /etc/passwd /var/lib/grafana /var/log/grafana /grafana

COPY ./run.sh /run.sh

ENTRYPOINT ["/run.sh"]

WORKDIR /grafana
