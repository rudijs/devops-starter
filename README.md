# devops-starter
Web App DevOps Starter - Terraform with Chef-Client

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

./devops.rb sshcopyid --hostname 192.168.33.100
./devops.rb sshcopyid --hostname 192.168.33.100 --user ubuntu
./devops.rb upgrade --hostname 192.168.33.100
./devops.rb reboot --hostname 192.168.33.100
./devops.rb bootstrap --hostname 192.168.33.100

The devops user, ubuntu, should have sudo access.
Typically this is in sudoers.d file:
/etc/sudoers.d/90-cloud-init-users

- setup docker on vm
docker-machine create --driver generic --generic-ip-address=192.168.33.100 app

- point local docker client to vm docker
eval $(docker-machine env app)

- can now run command on docker vm
docker ps

