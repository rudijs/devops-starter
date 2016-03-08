# docker run -d \
#     --name=registrator \
#     --net=host \
#     --volume=/var/run/docker.sock:/tmp/docker.sock \
#     gliderlabs/registrator:latest \
#       consul://localhost:8500

docker_image 'gliderlabs/registrator' do
  tag 'latest'
  action :pull_if_missing
end

docker_container 'registrator' do
  repo 'gliderlabs/registrator'
  tag 'latest'
  restart_policy 'always'
  network_mode 'host'
  volumes [
    '/var/run/docker.sock:/tmp/docker.sock'
  ]
  command "-internal=1 consul://#{node['docker-registrator']['consul']['ip']}:8500"
end
