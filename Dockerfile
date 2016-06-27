FROM grafana/grafana:latest
ENV GF_SERVER_ROOT_URL=http://grafana.server.name
ENV GF_SECURITY_ADMIN_PASSWORD=secret
ENV GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource
EXPOSE 3000

RUN mkdir /grafana && \
chown -R root:root /var/lib/grafana && chmod -R a+rw /etc/passwd /var/lib/grafana /var/log/grafana /grafana

COPY ./run.sh /run.sh

ENTRYPOINT ["/run.sh"]

WORKDIR /grafana
