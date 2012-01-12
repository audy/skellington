require 'sinatra' unless defined?(Sinatra)
require 'dm-core'
require './models.rb'

$ENVIRONMENT == ENV['SINATRA_ENV'] || :development


case $ENVIRONMENT
  when :development
    DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite3://db/development.db')
  when :production
    DataMapper.setup(:default, ENV['DATABASE_URL'] || fail )
end