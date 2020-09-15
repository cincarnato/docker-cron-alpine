FROM alpine:3.12

RUN echo "* * * * * echo Date:  $(date '+%Y-%m-%d %H:%M')" | crontab -

# APP ENTRYPOINT.
# Overwrite by "crond -f -l 2" in docker-compose.yml entrypoint attribute for cron service
ENTRYPOINT tail -f /dev/null