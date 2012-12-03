#
# Cookbook Name:: timezone
# Recipe:: default
#
# Copyright 2012, Green Alto
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

timezone = node[:timezone][:value]

package 'tzdata'

file '/etc/timezone' do
  content node[:timezone][:value]
  not_if { timezone.nil? }
  notifies :run, 'execute[reconfigure-timezone]', :immediately
end

execute 'reconfigure-timezone' do
  command 'dpkg-reconfigure -f noninteractive tzdata'
  action :nothing
end
