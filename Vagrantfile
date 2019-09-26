# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  (1..2).each do |i|
    config.vm.define vm_name=("web%02d" % i) do |node|
      node.vm.box = "galser/ubuntu-1804-vbox"
      node.vm.hostname = vm_name
      node.vm.provision "shell", path: "scripts/provision-web.sh"
    end # config for one instance
  end # sequnce of nodes

  config.vm.define vm_name="mysql" do |node|
    node.vm.box = "galser/ubuntu-1804-vbox"
    node.vm.hostname = vm_name
  end # config for mysql instance


end
