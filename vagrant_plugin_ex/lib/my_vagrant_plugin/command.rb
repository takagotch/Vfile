#"free-memory"
module MyVagrantPlugin
  class Command < Vagrant.plugin("2", "command")
    def execute
	  #output
      puts "Hello!"
	 
	  #state1
	  machine = @env.machine(:default, :virtualbox)
	  puts machine.state.id.to_s
	 
	  #state2
	  machine = @env.machine(:default, :virtualbox)
	  if machine.state.id != :running
	    @env.ui.error("Machine must be running.")
	    return 1
	  end
	  #Vagrant::UI::Interface
	  command = "grep MemFree /proc/meminfo | awk '{print $2}'" machine.communicate.
	  machine.communicate.execute(command) do |type, data|
	    @env.ui.info(data)
	  end
	  
	  command = "grep MemFree /proc/meminfo |awk '{print $2}'"
	  width_target_vms(@argv) do |machine|
	    if machine.state.id != :running
		  @env.ui.info("#{machine.name} id not running.")
		  next
		end
	    machine.communicate.execute(command) do |type, data|
	      @env.ui.info(data)
	    end
	  end
	  
	  #OptionParser
	  opts = OptionParser.new do |o|
	    o.banner = "Usage: vagrant free-memory [--help]"
	  end
	  argv = parse_options(opts)
	  command = "grep MemFree /proc/meminfo | awk '{print $2}'"
	  width_target_vms(@argv) do |machine|
	    if machine.state.id != :running
		  @env.ui.info("#{machine.name} id not running.")
		  next
		end
	    machine.communicate.execute(command) do |type, data|
	      @env.ui.info(data)
	    end
	  end
	  
	  return 0
	end
  end
end