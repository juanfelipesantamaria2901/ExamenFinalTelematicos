Vagrant.configure("2") do |config|

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote = true
  end

  config.vm.define :streama do |streama|
    streama.vm.box = "bento/centos-7.9"
    streama.vm.network :private_network, ip: "192.168.50.8"
    streama.vm.hostname = "streama"
    config.vm.synced_folder ".", "/vagrant/JuanFelipe"
    end

  config.vm.define :streama2 do |streama2|
    streama2.vm.box = "bento/centos-7.9"
    streama2.vm.network :private_network, ip: "192.168.50.9"
    streama2.vm.hostname = "streama2"
    config.vm.synced_folder ".", "/vagrant/JuanFelipe"
    end

  config.vm.define :firewall3 do |firewall3|
    firewall3.vm.box = "bento/centos-7.9"
    firewall3.vm.network :private_network, ip: "192.168.50.10"
    firewall3.vm.hostname = "firewall3"
    config.vm.synced_folder ".", "/vagrant/JuanFelipe"
    end  
  end
