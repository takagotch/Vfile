#default
module MyVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "my vagrant plugin"
	
	config("apt_get", :provisioner) do
	  require_relative "my_vagrant_plugin/provisioner_config"
	  ProvisionerConfig
	end
	
	provisioner "apt_get" do
	  require_relative "my_vagrant_plugin/provisioner"
	  Provisioner
	  	  
	end	
  end
end