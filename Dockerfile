FROM golang:alpine3.17
RUN apk add git
RUN go install github.com/oncilla/old-man-yells-at/cmd/old-man-yells-at@latest
RUN apk del git
WORKDIR /
RUN mkdir input
RUN mkdir output
COPY ./make_icons.sh .
RUN chmod +x make_icons.sh
ENTRYPOINT ["./make_icons.sh"]
