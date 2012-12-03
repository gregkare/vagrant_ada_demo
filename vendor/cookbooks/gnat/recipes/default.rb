#
# Cookbook Name:: gnatpro
# Recipe:: default
#
# Copyright 2011, Green Alto
#
# All rights reserved - Do Not Redistribute

case node[:platform]
when 'debian', 'ubuntu'
  %w(gnat libaunit3).each do |package_name|
    package package_name
  end
end
