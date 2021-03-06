
# Don't touch unless you know what you're doing!

Vagrant.configure(2) do |config|

  # Base Box
  # --------------------
  config.vm.box = "ubuntu/trusty64"

  # Connect to IP
  # Note: Use an IP that doesn't conflict with any OS's DHCP (Below is a safe bet)
  # --------------------
  config.vm.network :private_network, ip: "192.168.50.4"
  config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64/versions/14.04/providers/virtualbox.box"

  # Forward to Port
  # --------------------
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8011, host: 8011
  #mongo
  config.vm.network "forwarded_port", guest: 27017, host: 27017
  #elk
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 5601, host: 5601
  config.vm.network "forwarded_port", guest: 9300, host: 9300
  #pm2 port
  config.vm.network "forwarded_port", guest: 9615, host: 9615

  # Optional (Remove if desired)
  config.vm.provider :virtualbox do |v|
    # How much RAM to give the VM (in MB)
    # -----------------------------------
    v.customize ["modifyvm", :id, "--memory", "2048"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    # Comment the bottom two lines to disable muli-core in the VM
    #v.customize ["modifyvm", :id, "--cpus", "2"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  
  # Provisioning Script
  # --------------------
  config.vm.provision "shell", path: "provision.sh"

  # Synced Folder
  # --------------------
  config.vm.synced_folder "./dynamic-content/", "/dynamic-content"
  config.vm.synced_folder "./static-content/", "/static-content"
  config.vm.synced_folder "./git-config/", "/git-config"
end
