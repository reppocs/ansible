#!/usr/bin/env bash

# git vars
gituser="reppocs"
gitrepo="ansible"

# handle errors in a uniform manner
err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: ERROR: $*" >&2
  exit 1
}

# update and install required packages for ansible
sudo apt-add-repository -y ppa:ansible/ansible > /dev/null
DEBIAN_FRONTEND=noninteractive apt-get update -qq
sudo apt-get -y install curl git software-properties-common ansible -qq
sudo apt-get -y autoremove -qq

# get the ansible repo
git clone https://github.com/"$gituser"/"$gitrepo".git && cd "$gitrepo" || err "cd failed"
