require 'sinatra'
require 'data_mapper'
require 'bcrypt'

require './models.rb'

class App < Sinatra::Base

  DataMapper.finalize

  set :environment, :development
  set :root, File.expand_path(File.dirname(__FILE__))

  DB_PATH = File.join(File.dirname(__FILE__), 'db')

  configure :development do
    DataMapper.setup(:default,
                     :adapter => 'sqlite',
                     :database => File.join(DB_PATH, 'development.db'))
    DataMapper.auto_upgrade!
    require 'sinatra/reloader'
  end

  configure :test do
    DataMapper.setup(:default, "sqlite::memory:")
  end

end