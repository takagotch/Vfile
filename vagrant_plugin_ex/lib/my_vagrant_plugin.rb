#default
module MyVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "my vagrant plugin"
	
	#"free-memory"
	comand "free-memory" do
	  require_relative "my_vagrant_plugin/command"
	 Command
	end
	
  end
end