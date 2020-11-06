require 'sinatra/base'
require_relative './models/cheep.rb'

class Chitter < Sinatra::Base
  get '/' do 
    redirect 'cheeps'
  end

  get '/cheeps' do
    @cheeps = Cheep.all.reverse
    slim :'cheeps/index'
  end

  post '/cheeps' do
    Cheep.create(params)
    redirect '/cheeps'
  end

  run! if app_file == $0
end

