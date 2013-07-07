require 'sinatra'
require 'sinatra/reloader'
require 'redis'
require './helper'

before do
  @redis = Redis.new
end

get '/' do
  redirect "/index"
end

get '/index' do
  erb :index
end

post '/index' do
  unless (params[:url] =~ URI::regexp).nil?
    @token = sht
    @redis.set("#{@token}", params[:url])
    erb :index
  end
end

get '/:token/?' do
  url = @redis.get "#{params[:token]}"
  redirect (url)
end
