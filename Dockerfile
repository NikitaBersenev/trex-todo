FROM golang:1.23.2  AS builder
WORKDIR /app
COPY go.* ./
RUN go mod tidy
RUN go mod download
COPY . .
RUN go build -o myapp main.go
EXPOSE 8080
CMD ["./myapp"]