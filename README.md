# Action Jira Integration

This repository provides a GitHub Action for integrating with Jira. It enables automated workflows that create ira issues.

## Features

- Create Jira issues based on GitHub events

## Usage

Add the following to your GitHub Actions workflow:

```yaml
- name: Jira Integration
    uses: brandlive/action-jira-integration@v1
    with:
          action: "create"
          token: ${{ secrets.JIRA_TOKEN }} 
          jira_url: ${{ vars.JIRA_URL }}
          project: ${{ vars.JIRA_PROJECT }}
          summary: Ticket summary
          description: Ticket description
          priority: Ticket priority 
          label: Ticket Labels
```

## License

MIT

## Contributing

Contributions are welcome! Please open issues or pull requests.
