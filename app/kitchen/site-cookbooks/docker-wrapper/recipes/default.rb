#
# Cookbook Name:: docker-wrapper
# Recipe:: default
#
# Copyright (C) 2016 Rudi Starcevic
#
# All rights reserved - Do Not Redistribute
#
# Needed linux-image-extra for aufs filesystem support
# package "linux-image-extra-`uname -r`"

docker_service 'default' do
  action [:create, :start]
  # version '1.10.2'
  # insecure_registry node['docker-wrapper']['docker_opts']['insecure-registry']
end
