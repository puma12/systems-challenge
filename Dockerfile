FROM golang:alpine AS build
RUN apk --no-cache add gcc g++ make git
WORKDIR /go/src/app
COPY . .
RUN go mod init web-app
RUN go mod tidy
RUN GOOS=linux go build -o ./bin/web-app ./src/main.go

FROM alpine:3.16
WORKDIR /usr/bin
COPY --from=build /go/src/app/bin /go/bin
ENTRYPOINT /go/bin/web-app
