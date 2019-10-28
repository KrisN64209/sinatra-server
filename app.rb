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


get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end