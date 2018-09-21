FROM golang:1.8

LABEL "com.github.actions.name"="GitHub Deployer for JIRA"
LABEL "com.github.actions.description"="Wraps the JIRA CLI to enable common JIRA commands."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

RUN go get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira

ENTRYPOINT ["jira"]
