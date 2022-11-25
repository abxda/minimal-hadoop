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
 
end
