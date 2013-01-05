include_recipe "git::default"

directory  "/var/run/couchpotato" do
  owner node["couchpotato"]["user"]
  group node["couchpotato"]["group"]
  mode "0755"
  recursive true
  action :create
end

directory "#{node['couchpotato']['data_dir']}" do
  owner node["couchpotato"]["user"]
  group node["couchpotato"]["group"]
  action :create
  recursive true
end

git "#{node['couchpotato']['location']}" do
  repository "git://github.com/RuudBurger/CouchPotatoServer.git"
  reference "master"
  action :sync
end

execute "chown-git-repo" do
  command "chown -R #{node["couchpotato"]["user"]}:#{node["couchpotato"]["group"]} #{node['couchpotato']['location']}"
end

template "/etc/init.d/couchpotato" do
    source "couchpotato.erb"
    mode 0755
    owner "root"
    group "root"
end

template "/home/#{node['couchpotato']['user']}/.couchpotato/settings.conf" do
  source "settings.conf.erb"
  mode 06666
  owner node["couchpotato"]["user"]
  group node["couchpotato"]["group"]
  notifies :restart, 'service[couchpotato]'
end

service "couchpotato" do
  action :start
end
