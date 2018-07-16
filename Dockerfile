FROM docker:stable-git

RUN sudo apt-get update && sudo apt-get install python-pip python-dev jq \
    sudo pip install awscli \
    sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest \
    echo "$(curl -s https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest.md5) /usr/local/bin/ecs-cli" | md5sum -c - \
    sudo chmod +x /usr/local/bin/ecs-cli