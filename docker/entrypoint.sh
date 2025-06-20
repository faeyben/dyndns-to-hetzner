#!/bin/bash
set -e

source /app/venv/bin/activate
gunicorn -w 1 "dyndns_to_hetzner:create_app()" --access-logfile=- --bind=0.0.0.0:5000
