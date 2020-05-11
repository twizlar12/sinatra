require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Good day World"
end

get '/cat' do
  "<div style='border: 3px dashed purple'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end