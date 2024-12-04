FROM golang:1.19.2-bullseye

WORKDIR /app
EXPOSE 8080
LABEL version="1.0"
COPY . .
COPY banners /banners
COPY css /css
COPY funcs /funcs
COPY Html /Html
COPY JavaScript /JavaScript

RUN go build -o godocker


CMD ["./godocker"]