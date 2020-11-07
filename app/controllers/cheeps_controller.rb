class CheepsController < ApplicationController

  before do
    authenticate!
  end
  
  get '/' do
    redirect 'cheeps'
  end

  get '/cheeps' do
    @cheeps = Cheep.all.reverse
    slim :'cheeps/index'
  end

  post '/cheeps' do
    current_user.cheeps.create(params)
    redirect '/cheeps'
  end

  private

  def authenticate!
    unless current_user
      redirect '/sessions/new'
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end

