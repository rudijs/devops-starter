#
# Cookbook Name:: common
# Recipe:: default
#
# Copyright (C) 2016 Rudi Starcevic
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'timezone-ii'
include_recipe 'hostname'
include_recipe 'os-hardening'
include_recipe 'apt-get-periodic'
include_recipe 'unattended_upgrades'
include_recipe 'postfix'
include_recipe 'postfix::aliases'
include_recipe 'postfix::transports'
include_recipe 'notify-email-on-boot'
package 'ntp'
package 'apticron'
# package 'git-core'
package 'htop'
package 'sysstat'
package 'iotop'
package 'mailutils'
# package 'zip'
# package 'unzip'
package 'mosh'
package 'smartmontools'
