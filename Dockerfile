FROM golang:latest
RUN go env -w GO111MODULE=off
RUN go get -u github.com/oncilla/old-man-yells-at/cmd/old-man-yells-at
WORKDIR /
RUN mkdir input
RUN mkdir output
COPY ./make_icons.sh .
RUN chmod +x make_icons.sh
ENTRYPOINT ["./make_icons.sh"]