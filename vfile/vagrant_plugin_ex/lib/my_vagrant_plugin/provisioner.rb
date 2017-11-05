module MyVagrantPlugin
  class Provisioner < Vagrant.plugin("2", "provisioner")
    def provisioner
	  packages = ["htop", "curl"]
	  #command = "apt-get install -y #{packages.join(" ")}"
	  command = "apt-get install -y #{@config.packages.join(" ")}"
	  
	  @machine.communicate.sudo(command) do |type, data|
	    @machine.env.ui.info(data.chomp, prefix: false)
		
	  root_config.vm.synced_folder "./files", "/files/on/guest"
	  
	  end
	end
  end
end