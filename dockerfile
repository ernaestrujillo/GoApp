FROM golang:bookworm

RUN apt update
RUN apt upgrade -y
RUN apt install git -y

WORKDIR /usr/src/app
RUN git clone -b version-2.3 --single-branch https://github.com/ernaestrujillo/GoApp.git /usr/src/app
RUN go build -o server /usr/src/app/main.go

CMD ["/usr/src/app/server"]