FROM ubuntu:latest

ENTRYPOINT ["top", "-b"]

RUN sudo apt-get update && sudo apt-get upgrade \
    touch .env / \


COPY status.json /app/status.json \

WORKDIR /app

EXPOSE 3000

CMD ["/app/api", "-p", "3000"]