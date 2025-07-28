FROM n8nio/n8n:latest

# Wechsel zu Root, um Dateien zu schreiben
USER root

# Kopiere das Startscript und mache es ausführbar
COPY start.sh /home/node/start.sh
RUN chmod +x /home/node/start.sh
RUN chown node:node /home/node/start.sh

# Wechsle zurück zum normalen Node-User (Standard bei n8n)
USER node

# Starte das Script beim Container-Start
CMD ["/home/node/start.sh"]
