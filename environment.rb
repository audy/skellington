require 'sinatra'
require 'bcrypt'
require 'bundler'

Bundler.require :default

require './models.rb'

class Skellington < Sinatra::Base

  # finalize models and connect to database
  DataMapper.finalize
  DataMapper.setup :default, ENV['DATABASE_URL']

  # construct default :public_folder and :views
  set :root, File.dirname(__FILE__)

  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end

  configure :production do
  end

  configure :test do
  end

end
