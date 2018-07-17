FROM docker:17.05.0-ce-git
FROM mesosphere/aws-cli:latest
RUN apk --update add jq