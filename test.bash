issuetype_id="10004"
project_id="OP"
priority_id="3"
summary="TEST [Dependabot] Update dependencies"
description="Dependabot has created a pull request to update dependencies.\\nPR: https://github.com/brandlive1941/action-jira-integration/pull/3\\nBranch: 1f9adependabot/npm_and_yarn/semantic-release/npm-12.0.1\\nRepository: brandlive1941/action-jira-integration"
jira_token=$JIRA_TOKEN
json='{
        "fields": {
          "project": {
            "key": "%s"
          },
          "summary": "%s",
          "description": "'"%s"'",
          "issuetype": {
            "id": "%s"
          },
          "priority": {
            "id": "%s"
          }
        }
      }'

payload=$(printf "$json" \
  "$project_id" \
  "$summary" \
  "$description" \
  "$issuetype_id" \
  "$priority_id")
printf "%s\n" "$payload"
auth="echo -n $JIRA_TOKEN" | base64
curl -i -X POST \
  -u "$JIRA_TOKEN" \
  -d "$payload" \
  -H "Content-Type: application/json" \
  -H "X-Atlassian-Token:no-check" \
  https://brandlive.atlassian.net/rest/api/3/issue #  -H "Authorization: Basic $auth" \
