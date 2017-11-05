#default
module MyVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "my vagrant plugin"
	
    action_hook("my_hook", "machine_action_up") do |hook|
	  require_relative "my_vagrant_plugin/my_action"
	  hook.prepend(MyAction)	
	end	
  end
end