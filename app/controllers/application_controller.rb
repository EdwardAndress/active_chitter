class ApplicationController < Sinatra::Base
  enable :sessions

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end
end