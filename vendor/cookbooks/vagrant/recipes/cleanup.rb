#
# Cookbook Name:: vagrant
# Recipe:: cleanup
#
# Copyright 2012, Sogilis
#

bash "Remove items used for building, since they aren't needed anymore" do
  user 'root'
  code <<-EOF
apt-get -y remove linux-headers-$(uname -r) build-essential
apt-get -y autoremove
  EOF
end

bash "Zero out the free space to save space in the final image" do
  user 'root'
  code <<-EOF
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
  EOF
end
