module MyVagrantPlugin
  class Config < Vagrant.plugin("2", "config")
    attr_accessor :value
	
	#
	def initialize
	  super
	  @value = UNSET_VALUE
	end
	def finalize!
	  @value = nil if @value == UNSET_VALUE
	end
	
	#
	def merge(other)
	  super.tap do |result|
	    other = @value
		newer = other.instance_variable_get(:@value)
		if newer != UNSET_VALUE && older != UNSET_VALUE
		  if newer.to_i > older.to_i
		    result.instance_variable_set(:@value, newer)
		  else
		    result.instance_variable_set(:@value, older)
		  end
        end
      end
    end
	
	#
	module MyVagrantPlugin
	  def validate(machine)
	    errors = []
		if !@value
		  error << "Value must be set."
		end
		
		return {"my key" => errors}
	    end
	  end
	end
	
	
  end
end