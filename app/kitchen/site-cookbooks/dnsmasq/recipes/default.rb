#
# Cookbook Name:: dnsmasq
# Recipe:: default
#
# Copyright (C) 2016 Rudi Starcevic
#
# All rights reserved - Do Not Redistribute
#
package 'dnsmasq'

service 'dnsmasq' do
    supports :restart => true, :reload => true
    action :nothing
end

template '/etc/dnsmasq.d/10-consul' do
  source '10-consul.erb'
  variables ({
    consul_ip: node['dnsmasq']['settings']['consul_ip']
  })
  notifies :restart, 'service[dnsmasq]', :immediately
end
