#
# Cookbook Name:: gnatpro
# Recipe:: gps
#
# Copyright 2011, Green Alto
#
# All rights reserved - Do Not Redistribute

case node[:platform]
when 'debian', 'ubuntu'
  package 'gnat-gps'
end
