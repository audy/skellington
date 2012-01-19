require './environment.rb'

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