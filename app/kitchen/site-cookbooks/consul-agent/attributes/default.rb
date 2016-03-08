# consul agent -bind=192.168.33.101 -data-dir /etc/consul/ -join 192.168.33.100

default['consul']['config']['recursors'] = [
  '8.8.8.8',
  '8.8.4.4'
]
default['consul']['config']['bind_addr'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
default['consul']['config']['start_join'] = [
  '192.168.33.100'
]
