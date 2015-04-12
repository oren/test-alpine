FROM alpine:edge
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk update
RUN apk add --update iojs
RUN apk update
RUN apk upgrade
RUN rm -rf /var/cache/apk/*
WORKDIR /src
COPY . /src
EXPOSE 3000
CMD ["node"]
