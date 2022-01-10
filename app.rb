require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello, not a secret"
end

get '/secret' do
  "secret message"
end

get '/cat' do
"<div style='border: 3px dashed red'>
  <img src='http://placekitten.com/500/500'>
</div>"
end