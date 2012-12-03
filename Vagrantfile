# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.customize ['modifyvm', :id, '--memory', '512', '--cpus', '2']

  config.vm.box     = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  # This box is used to create the dev environment
  config.vm.define 'package' do |package_config|
    package_config.vm.network :hostonly, '33.33.33.11'
    package_config.ssh.forward_x11 = true
    package_config.vm.share_folder('v-app', '/opt/app', './app')
    package_config.vm.share_folder('v-apt', '/var/cache/apt', './apt-cache')

    package_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = 'cookbooks'
      chef.run_list       = %w(recipe[apt] recipe[git] recipe[gnat])
    end
  end

  config.vm.define 'dev' do |dev_config|
    dev_config.vm.box = 'ada_demo'
    dev_config.vm.network :hostonly, '33.33.33.11'
    dev_config.ssh.forward_x11 = true
    dev_config.vm.share_folder('v-app', '/opt/app', './app')

    dev_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = 'cookbooks'
      chef.run_list       = %w(recipe[git] recipe[gnat])
    end
  end
end
