Vagrant.configure("2") do |config|
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "1024"
    v.vmx["numvcpus"] = "1"
  end

  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "centos/7"
    vm1.vm.hostname = "vm1"
    vm1.vm.network "public_network", ip: "192.168.100.205"
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "centos/7"
    vm2.vm.hostname = "vm2"
    vm2.vm.network "public_network", ip: "192.168.100.206"
  end
end

