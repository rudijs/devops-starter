#
# Cookbook Name:: docker-felk
# Recipe:: default
#
# Copyright (C) 2016 Rudi Starcevic
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'docker-felk::elasticsearch'
include_recipe 'docker-felk::logstash'
