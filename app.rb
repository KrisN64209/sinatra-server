require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret!"
end

get '/help' do
  "Help page"
end

get '/goodbye' do
  "Goodbye"
end

set :session_secret, 'super secret'


get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index 
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index 
end