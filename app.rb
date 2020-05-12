require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Good day World"
end

get '/random-cat' do
  @cat_name = ["Kabir", "George", "Keith"].sample
  erb(:index)
end

get '/cat_form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @cat_name = params[:cat_name]
  erb(:index)
end

