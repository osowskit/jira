# GitHub Task for Jira

The GitHub Task for [Jira](https://www.atlassian.com/software/jira) task wraps the [Netflix-Skunkworks go-jira](https://github.com/Netflix-Skunkworks/go-jira) Open Source Jira CLI to enable Jira commands.

## Usage

```
action "Create Issue" {
  uses = "osowskit/jira@master"
  env = {
    USERNAME = "user@example.com"
    HOST = "https://company.atlassian.net"
    PROJECT_NAME = "SENG"
  }
  secrets = ["JIRA_API_TOKEN"]
  args = "create --project=$PROJECT_NAME --noedit --override summary=\"Created via action\""
}
```
