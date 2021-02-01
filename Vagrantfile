# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  # config.disksize.size = '30GB'

  config.vm.network "public_network"

  config.vm.synced_folder "data", "/vagrant_data"

  config.vm.network "private_network", ip: "172.16.16.150"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "3072"
    vb.cpus = 4
  end

  config.vm.provision "shell", path: "bootstrap.sh"

end
