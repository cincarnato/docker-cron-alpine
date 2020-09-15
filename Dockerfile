FROM alpine:3.12

RUN echo "* * * * * echo Date:  $(date '+%Y-%m-%d %H:%M')" | crontab -

ENTRYPOINT /bin/true