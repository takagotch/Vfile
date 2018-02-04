#default
module MyVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "my vagrant plugin"
	
	config "my_key" do
	  require_relative "my_vagrant_plugin/config"
	  Config
	end
	
  end
end