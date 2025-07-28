FROM n8nio/n8n:latest

# Kopiere das Secret-File (wird beim Start von Render injiziert)
COPY /etc/secrets/n8n /home/node/.env

# Exportiere ENV-Variablen und starte n8n
CMD export $(cat /home/node/.env | xargs) && n8n
