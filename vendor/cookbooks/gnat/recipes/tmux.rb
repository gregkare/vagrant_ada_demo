include_recipe 'tmux'

# We use our own custom tmux config
template '/etc/tmux.conf' do
  source 'tmux.conf.erb'
  mode 0644
end
