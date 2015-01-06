# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "fillup/centos-7.0-x86_64-minimal"

  config.ssh.insert_key = false

  config.vm.define 'slave-1' do |machine|
    machine.vm.hostname = 'slave-1'
    machine.vm.network 'private_network', ip: "192.168.77.10"
  end

  config.vm.define 'slave-2' do |machine|
    machine.vm.hostname = 'slave-2'
    machine.vm.network 'private_network', ip: "192.168.77.11"
  end

  config.vm.define 'master-1' do |machine|
    machine.vm.hostname = 'master-1'
        machine.vm.network 'private_network', ip: "192.168.77.254"

    machine.vm.provision :ansible do |ansible|
      ansible.playbook = "all.yml"
      ansible.limit = "all"
      ansible.sudo = true
      ansible.groups = {
        "slave" => ["slave-1", "slave-2", "slave-3"],
        "master" => ["master-1"],
        "zookeeper" => ["master-1"],
      }
    end
  end
end
