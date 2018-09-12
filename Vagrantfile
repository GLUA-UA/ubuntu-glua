# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_version = "=20180903.0.0"
  config.disksize.size = "40GB"

  config.vagrant.plugins = ["vagrant-disksize", "vagrant-vbguest"]

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  #   config.vm.box_check_update = false

  # Network Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # Folder Settings
  config.vm.synced_folder ".", "/vagrant"
  #config.vm.synced_folder "./etc", "/etc"
  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
    vb.cpus = 1
  end

  # Provision Settings
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y aptitude
  #   aptitude install xubuntu-core
  # SHELL

  config.vm.provision "ansible_local" do |ansible|
	ansible.playbook = "/vagrant/playbook.yml"
  	ansible.install = true
  end	
end
