require 'sinatra/base'
require 'sinatra-initializers'
require_relative '../models/cheep.rb'

class CheepsController < Sinatra::Base

  register Sinatra::Initializers

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

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
end

