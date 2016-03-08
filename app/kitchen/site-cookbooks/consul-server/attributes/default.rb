# consul agent -server -bind=192.168.33.100 -ui -client=192.168.33.100 -data-dir /etc/consul/ -bootstrap=1

default['consul']['config']['recursors'] = [
  '8.8.8.8',
  '8.8.4.4'
]
default['consul']['config']['bind_addr'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
default['consul']['config']['server'] = true
default['consul']['config']['bootstrap_expect'] = 1

default['consul']['config']['ui'] = true
default['consul']['config']['client_addr'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
