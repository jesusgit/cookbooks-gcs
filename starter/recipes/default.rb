# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Vienbenido a Chef, #{node["starter_name"]}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
template '/etc/gcs-app/application.conf' do
source "gcs-app.conf.erb"
variables({
:allowed_ip => node['starter']['miaplicacion']['allowed_ip'],
:ip => node['starter']['miaplicacion']['ip'],
:port => node['starter']['miaplicacion']['port'],
:database => node['starter']['miaplicacion']['database'],
:user => node['starter']['miaplicacion']['user'],
:pasword => node['starter']['miaplicacion']['pasword']

 })
end
