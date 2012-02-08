require './environment.rb'
require 'sinatra'
require 'less'

class Skellington < Sinatra::Base

  enable :sessions
  
  register Sinatra::AssetPack
  
  assets do
    # serve '/js',     from: 'assets/js'
    serve '/css',    from: 'assets/css'
    # serve '/images': from: 'assets/images'
    
    css :style, ['/css/*.css']
    
    prebuild true
  end

  helpers do

    def authenticate!
      redirect '/' unless @user
    end

  end

  before do
    @user = User.get(session[:user_id])
  end

  get '/' do
    erb :home
  end

end