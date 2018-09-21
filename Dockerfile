FROM node:10-alpine

LABEL "com.github.actions.name"="GitHub Deployer for JIRA"
LABEL "com.github.actions.description"="Wraps the JIRA CLI to enable common JIRA commands."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

RUN yarn global add jira-cli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
