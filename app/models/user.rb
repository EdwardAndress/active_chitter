require 'sinatra/activerecord'

class User < ActiveRecord::Base

  has_many :cheeps

  def self.authenticate(params)
    user = User.find_by(email: params[:email])
    if user && user.password == params[:password]
      return user
    else
      return nil
    end
  end
end