#!/usr/bin/env bash

# Install required packages to run the ansible playbook
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt -y install curl git software-properties-common ansible
sudo apt -y autoremove
