require 'sinatra'
require 'bcrypt'
require 'bundler'

Bundler.require(:default)

require './models.rb'

class Skellington < Sinatra::Base

  DataMapper.finalize

  set :root, File.dirname(__FILE__)

  DB_PATH = File.join(File.dirname(__FILE__), 'db')

  configure :development do
    DataMapper.setup(:default, ENV['DATABASE_URL'])
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end

  configure :production do
    DataMapper.setup(:default, ENV['DATABASE_URL'])
  end

  configure :test do
    DataMapper.setup(:default, ENV['DATABASE_URL'])
  end

end
