ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'
BRIDGE_INT = "br-mgmt"

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
 
  config.vm.define :nodo1 do |nodo1|
    nodo1.vm.box = "debian/buster64"
    nodo1.vm.hostname = "nodo1"
    nodo1.vm.box_check_update = false
    nodo1.vm.network :private_network, :ip => '192.168.60.11', :libvirt__network_name => 'vagrant-libvirt'
     
    nodo1.vm.provider :libvirt do |v|
      v.memory = 2048  
      v.cpus = 2
    end  
  end
end
