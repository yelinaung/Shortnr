require 'sinatra'
require 'sinatra/reloader'
require 'redis'
require './helper'

get '/' do
  "This is index"
end

get '/index' do
  erb :index
end

post '/index' do
  erb :index
  @sht_string = "Hello World " + sht

  if (params[:url] =~ URI::regexp)
    @ 
end

