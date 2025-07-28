FROM n8nio/n8n:latest

# Kopiere das Secret-File von Render in das Home-Verzeichnis des Containers
COPY /etc/secrets/n8n /home/node/.env

# Lade alle ENV-Variablen aus der .env-Datei und starte n8n
CMD export $(cat /home/node/.env | xargs) && n8n
