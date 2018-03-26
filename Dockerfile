FROM circleci/node:9.8-stretch-browsers

MAINTAINER Gustavus Shaw II

RUN sudo apt-get update
RUN sudo apt-get install python-pip python-dev jq
RUN sudo pip install awscli --upgrade --user
RUN sudo pip install awsebcli --upgrade --user
