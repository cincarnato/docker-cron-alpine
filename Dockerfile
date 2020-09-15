FROM alpine:3.12

# Add a first cron job
RUN echo "* * * * * echo Date:  $(date '+%Y-%m-%d %H:%M')" | crontab -

# Append another cron job
RUN echo "$(crontab -l; echo '* * * * * echo SomeJob')" | crontab -

# APP ENTRYPOINT.
# Overwrite by "crond -f -l 2" in docker-compose.yml entrypoint attribute for cron service
ENTRYPOINT tail -f /dev/null