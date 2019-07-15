# jira-software and confluence

Atlassian jira software and confluence

## Tips

If confluence and jira share one database instance, they have to set different `schema` to avoid conflict.
But confluence isn't able to configure `schema` during installation process.
One solution is to insulate their data into two different databases.
Hence, an extra init script for `PostgreSQL` to create two databases is required.

## References

1. [Docker Hub](https://hub.docker.com/r/cptactionhank/atlassian-jira-software)
2. [JIRA ❤ Docker](https://cptactionhank.github.io/docker-atlassian-jira-software)
3. [Github](https://github.com/cptactionhank/docker-atlassian-jira-software)
