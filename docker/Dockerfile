FROM python:3.12
WORKDIR /app

RUN  <<EOF
python -m venv venv
source venv/bin/activate
pip install dyndns-to-hetzner gunicorn
groupadd -g 10000 app; useradd -u 10000 -M -g app -d /app app
EOF

COPY docker/entrypoint.sh .

USER app
ENV FLASK_APP=dyndns_to_hetzner
ENV FLASK_ENV=production
ENV INSTANCE_PATH=/app/instance
EXPOSE 5000
CMD ["/app/entrypoint.sh"]
