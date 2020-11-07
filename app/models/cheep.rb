require 'sinatra/activerecord'

class Cheep < ActiveRecord::Base

  belongs_to :user

end