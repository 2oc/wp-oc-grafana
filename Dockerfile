FROM grafana/grafana:latest
ENV GF_SERVER_ROOT_URL=http://grafana.server.name
ENV GF_SECURITY_ADMIN_PASSWORD=secret
ENV GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource
EXPOSE 3000
