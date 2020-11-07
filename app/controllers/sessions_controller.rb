class SessionsController < ApplicationController

  get '/sessions/new' do
    slim :"sessions/new"
  end

  post '/sessions' do
    user = User.authenticate(params)
    if user
      session[:user_id] = user.id
      redirect '/cheeps'
    else
      redirect '/sessions/new'
    end
  end
end