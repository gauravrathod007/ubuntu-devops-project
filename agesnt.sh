#!/bin/bash

# Update the package repository and install necessary packages
sudo apt-get update -y
sudo apt-get install ruby-full ruby-webrick wget -y

# Download and install the AWS CodeDeploy agent
cd /tmp
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/releases/codedeploy-agent_1.3.2-1902_all.deb
sudo dpkg -i codedeploy-agent_1.3.2-1902_all.deb

# Start and enable the CodeDeploy agent service
sudo systemctl start codedeploy-agent
sudo systemctl enable codedeploy-agent

# Check the status of the CodeDeploy agent service
sudo systemctl status codedeploy-agent

