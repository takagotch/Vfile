module MyVagrantPlugin
  class MyException < Vagrant::Errors::VagrantError
    error_message("EER '%{thing}'")
  end

  raise MyException, thing: "raised"
end