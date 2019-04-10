FROM golang:1.12-alpine

RUN apk update && \
    apk upgrade && \
    apk add bash git && \
    apk add gcc && \
    apk add musl-dev && \
    apk add curl

# We create an /app directory within our
# image that will hold our application source
# files
RUN mkdir /go_app
# We copy everything in the root directory
# into our /app directory
COPY . /go_app
# We specify that we now wish to execute 
# any further commands inside our /app
# directory
WORKDIR /go_app
# we run go build to compile the binary
# executable of our Go program
# RUN go get ./...
# RUN go build -o main .
# Our start command which kicks off
# our newly created binary executable
# CMD ["go","/go_app/main"]