FROM alpine:3.12

MAINTAINER ivandreyv@gmail.com

RUN apk update && apk upgrade -U -a && apk add --no-cache tzdata 

COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
HEALTHCHECK --start-period=5s --interval=10s --timeout=3s --retries=2 CMD pgrep crond
