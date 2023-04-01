# syntax=docker/dockerfile:1

FROM golang
WORKDIR /app
COPY make_icons .
RUN go get -u github.com/oncilla/old-man-yells-at/cmd/old-man-yells-at
CMD ["make_icons"]
