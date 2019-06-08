# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # config.vm.box = "osx-yosemite"
  config.vm.box = "AndrewDryga/vagrant-box-osx"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  # config.vm.network "private_network", ip: "192.168.50.10"
  config.ssh.insert_key = false
  # config.vm.provision "shell", path: "setup.sh", privileged: false
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "develop-setup-playbook.yml"
    ansible.inventory_path = "localhost"
    ansible.extra_vars = {
      os_name: "mac",
      user: "vagrant"
    }
    ansible.limit = "all"
  end
  # config.vm.provision "shell", path: "init.sh", privileged: false
  # config.vm.provision "shell", path: "brew.sh", privileged: false
end
