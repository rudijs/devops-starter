directory '/opt/logstash/conf.d' do
  recursive true
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

conf = []
conf.push(node['docker-felk']['logstash']['settings']['conf'])

conf.flatten.each do |f|
  template "/opt/logstash/conf.d/#{f}" do
    source "conf.d/#{f}"
    owner 'ubuntu'
    group 'ubuntu'
    mode '0644'
  end
end
