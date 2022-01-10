require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @random_name = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

get '/secret' do
  "secret message"
end

get '/ramdom-cat' do
"<div style='border: 3px dashed red'>
  <img src='http://placekitten.com/500/500'>
</div>"
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end