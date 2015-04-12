FROM iojs:latest
WORKDIR /src
COPY . /src
EXPOSE 3000
CMD ["node server.js"]
