FROM docker:stable-git

RUN apt-get update && apt-get install python-pip python-dev jq \
    pip install awscli \
    curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest \
    echo "$(curl -s https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest.md5) /usr/local/bin/ecs-cli" | md5sum -c - \
    chmod +x /usr/local/bin/ecs-cli