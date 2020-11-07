class UsersController < ApplicationController

  get '/users/new' do
    slim :'users/new'
  end

  post '/users' do
    session[:user_id] = User.create(params).id
    redirect '/cheeps'
  end
end