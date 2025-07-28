FROM n8nio/n8n:latest

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
