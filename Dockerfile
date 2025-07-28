FROM n8nio/n8n:latest

USER root

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh && chown node:node /usr/local/bin/start.sh

USER node

ENTRYPOINT ["/usr/local/bin/start.sh"]
