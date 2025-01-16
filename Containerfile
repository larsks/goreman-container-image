FROM docker.io/golang:1.23-alpine AS build

WORKDIR /tmp
RUN apk add git make
RUN git clone https://github.com/mattn/goreman
RUN make -C goreman

FROM alpine:latest

COPY --from=build /tmp/goreman/goreman /usr/bin/

WORKDIR /app
CMD ["goreman", "start"]
