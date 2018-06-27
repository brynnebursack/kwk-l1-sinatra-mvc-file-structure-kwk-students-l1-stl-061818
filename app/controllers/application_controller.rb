require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base
  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do 
  	return erb :index
  end
  
  post '/' do
    @the_fortune=get_fortune
    @the_user=params[:user] # params is a hash that stores user input, we wanna enter the hash and pull out user  
    return erb :results 
  end 
end 
