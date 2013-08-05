source 'http://rubygems.org'

gem 'sinatra'
gem 'haml'
gem 'encrypted_cookie'
gem 'data_mapper'

gem 'sinatra-assetpack', :require => 'sinatra/assetpack', :git => 'git://github.com/rstacruz/sinatra-assetpack.git'

group :test do
  gem 'rspec'
  gem 'webrat'
  gem 'rack-test', :require => 'rack/test'
end

group :development do
  gem 'sqlite3'
  gem 'dm-sqlite-adapter'
  gem 'sinatra-reloader'
end

group :deployment do
  gem 'dm-postgres-adapter'
end
