#
# Cookbook Name:: consul-server
# Recipe:: default
#
# Copyright (C) 2016 Rudi Starcevic
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'consul::default'

consul_ui 'consul-ui' do
  owner node['consul']['service_user']
  group node['consul']['service_group']
  version node['consul']['version']
end
