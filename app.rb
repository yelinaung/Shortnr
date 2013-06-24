require 'sinatra'
require 'sinatra/reloader'
require 'redis'

get '/' do
  "This is index"
end

get '/index' do
  erb :index
end

post '/index' do
  erb :index
  @sht_string = "Hello World " + sht
end

def sht
  sht_string = rand(36**8).to_s(36)
end
