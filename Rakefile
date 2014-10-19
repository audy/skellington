require './environment.rb'

desc 'start application console'
task :console do
  require 'irb'
  ARGV.clear
  IRB.start
end

desc 'run specs'
task :spec do
  sh "DATABASE_URL=postgres://#{ENV['USER']}@127.0.0.1/skellington_test rspec"
end

namespace :db do
  desc 'seed the database with information'
  task :seed do
  end
end
