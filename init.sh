#!/usr/bin/env bash

# git vars
gituser="reppocs"
gitrepo="ansible"

# handle errors in a uniform manner                                                                              
err() {                                                                                                          
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: ERROR: $*" >&2                                                       
  exit 1
}

# need sudo access
[[ $(whoami) != "root" ]] && err "root permissions (sudo) required"

# update and install required packages for ansible
apt-add-repository -y ppa:ansible/ansible > /dev/null
DEBIAN_FRONTEND=noninteractive apt-get update -qq
apt-get -y install curl git software-properties-common ansible -qq
apt-get -y autoremove -qq

# get the ansible repo
git clone https://github.com/"$gituser"/"$gitrepo".git && cd "$gitrepo" || err "cd failed"
