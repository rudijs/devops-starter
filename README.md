# devops-starter

Web App DevOps Starter.

Cloud server configuration management with Terraform and Chef.

Local Virtualbox configuration management with Ruby scripts and Chef-solo.

## Prerequisites

Local

- Virtualbox
- Vagrant
- Ruby
- docker-machine
- docker-compose

## Install

- Start by clearing out any previous virtualbox known_hosts
- `ssh-keygen -f ~/.ssh/known_hosts -R 192.168.33.100`
- `ssh-keygen -f ~/.ssh/known_hosts -R 192.168.33.101`

## Server Setup

DB server

- `./devops.rb sshcopyid --hostname 192.168.33.100`
- `./devops.rb sshcopyid_ubuntu --hostname 192.168.33.100`
- `./devops.rb upgrade --hostname 192.168.33.100`
- `./devops.rb reboot --hostname 192.168.33.100`
- `./devops.rb bootstrap --hostname 192.168.33.100`
- `./devops.rb cook --hostname 192.168.33.100`

APP server

- `./devops.rb sshcopyid --hostname 192.168.33.101`
- `./devops.rb sshcopyid_ubuntu --hostname 192.168.33.101`
- `./devops.rb upgrade --hostname 192.168.33.101`
- `./devops.rb reboot --hostname 192.168.33.101`
- `./devops.rb bootstrap --hostname 192.168.33.101`
- `./devops.rb cook --hostname 192.168.33.101`

## Setup Docker

Setup docker-machine. The devops user, ubuntu, should have sudo access.

Typically this is in sudoers.d file: /etc/sudoers.d/90-cloud-init-users

DB server

- `docker-machine create --driver generic --generic-ip-address=192.168.33.100 --generic-ssh-user=ubuntu db`

APP server

- `docker-machine create --driver generic --generic-ip-address=192.168.33.101 --generic-ssh-user=ubuntu app`

Docker Usage:

Point your local docker client to the VM you wish to issue docker commands on:

- `docker-machine ls`
- `eval $(docker-machine env db)`
- or
- `eval $(docker-machine env app)`

Now run command on docker VMs

- `docker ps`
