FROM n8nio/n8n:latest

# Starte n8n mit geladenen Umgebungsvariablen aus Secret-Datei zur Laufzeit
CMD export $(cat /etc/secrets/n8n | xargs) && n8n
