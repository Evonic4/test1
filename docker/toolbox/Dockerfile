FROM alpine
RUN apk add --no-cache nano curl wget busybox-extras netcat-openbsd python py-pip
RUN apk --purge -v del py-pip
CMD tail -f /dev/null
