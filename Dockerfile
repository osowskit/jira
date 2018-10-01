FROM golang:alpine

RUN apk update && \
    apk add git jq

RUN go get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
