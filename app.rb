require 'sinatra/base'

class App < Sinatra::Base
  require_relative './app/controllers/application_controller.rb'
  require_relative './app/controllers/cheeps_controller.rb'
  require_relative './app/controllers/sessions_controller.rb'
  require_relative './app/models/cheep.rb'
  require_relative './app/models/user.rb'
end