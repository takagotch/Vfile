module MyVagrantPlugin
  class MyAction
    def initialize(app, env)
	  @app = app
	end
	
	def call(env)
	  puts "--> Called!"
	  @app.call(env)
	  puts "<-- called!"
	end
  end
end