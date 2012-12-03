#
# Cookbook Name:: hostname
# Recipe:: default
#
# Copyright 2012, Sogilis
#

# Only run on nodes using chef-server
return if Chef::Config[:solo]

domain = node[:domain_name]
name   = node.name

if domain && name
  fqdn = "#{name}.#{domain}"

  file '/etc/hostname' do
    content name
    mode 0644
    notifies :run, 'execute[set_hostname]'
  end

  execute 'set_hostname' do
    command 'hostname -F /etc/hostname'
    action :nothing
  end

  # Add the FQDN to the hosts file as well
  template '/etc/hosts' do
    source 'hosts.erb'
    mode    0644
    variables({ :ipaddress => node[:ipaddress],
                :name      => name,
                :fqdn      => fqdn })
  end
end
