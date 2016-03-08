# default['docker-registrator']['consul']['ip'] = '127.0.0.1'
default['docker-registrator']['consul']['ip'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
