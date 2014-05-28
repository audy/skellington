require 'sinatra'
require 'bcrypt'
require 'bundler'

Bundler.require(:default)

require './models.rb'

class Skellington < Sinatra::Base

  DataMapper.finalize

  set :root, File.dirname(__FILE__)

  DataMapper.setup(:default, ENV['DATABASE_URL'])

  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end

  configure :production do
  end

  configure :test do
  end

end
