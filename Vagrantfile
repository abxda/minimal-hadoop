Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  
  config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
  end
  
  config.vm.provider "vmware_desktop" do |v|
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "4"
  end
   
  config.vm.provision "shell", path: "install-java.sh"
  config.vm.provision "shell", run:"always", path:"start-services.sh", privileged:false
  config.vm.network "forwarded_port", guest: 8888, host: 7171
end
