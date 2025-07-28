FROM n8nio/n8n:latest

# Kopiere das Startscript in das Home-Verzeichnis
COPY start.sh /home/node/start.sh

# Setze das Script als ausführbar (jetzt erlaubt)
RUN chmod +x /home/node/start.sh

# Setze das Script als Startbefehl
CMD ["/home/node/start.sh"]
