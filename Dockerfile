FROM ubuntu:latest

RUN sudo apt-get update && sudo apt-get upgrade \

COPY status.json /app/
COPY api /app/
COPY .env /app/


WORKDIR /app

EXPOSE 3000

CMD ["/app/api"]

