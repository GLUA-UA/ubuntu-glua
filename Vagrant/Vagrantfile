# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.disksize.size = "40GB"

  config.vagrant.plugins = ["vagrant-reload", "vagrant-disksize", "vagrant-vbguest"]
  config.vbguest.auto_reboot = true
  config.vbguest.auto_update = true

  # Folder Settings
  config.vm.synced_folder ".", "/vagrant"

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.name = "ubuntu-glua"
    vb.gui = true
    vb.memory = "1024"
    vb.cpus = 1
  end

  config.vm.provision "ansible_local" do |ansible|
	  ansible.compatibility_mode = "2.0"
	  ansible.playbook = "playbook.yml"
  end
  
  config.vm.provision "reload"
  config.vm.provision "reload"
end
