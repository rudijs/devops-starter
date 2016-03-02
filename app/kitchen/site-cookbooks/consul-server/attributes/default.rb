# consul agent -server -bind=192.168.33.100 -ui -client=192.168.33.100 -data-dir /etc/consul/ -bootstrap=1

default['consul']['config']['bind_addr'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
# default['consul']['config']['bind_addr'] = '192.168.33.100'
default['consul']['config']['server'] = true
default['consul']['config']['bootstrap_expect'] = 1

default['consul']['config']['ui'] = true
default['consul']['config']['client_addr'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
# default['consul']['config']['client_addr'] = '192.168.33.100'
