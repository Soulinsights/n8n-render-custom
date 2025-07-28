#!/bin/sh
export $(cat /etc/secrets/n8n | xargs)
n8n
