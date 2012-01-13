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

secret = 
  begin
    File.read('config/secret.txt')
  rescue Errno::ENOENT
    random_secret = rand(10**128).to_s(36)
    puts <<-EOS
      Creating a random secret key for sessions
    
      For your Sinatra app to safely use sessions, a secret key
      must be used to prevent users from tampering with their
      cookie data (which could lead to unauthorized access to your
      application if you store login information in the session)
    
      The file config/secret.txt has been created with the following
      secret:
    
      #{random_secret}
    EOS
    `mkdir -p config`
    File.open('config/secret.txt', 'w') { |o| o.write random_secret }
    random_secret
  end

use Rack::Session::Cookie, :secret => secret