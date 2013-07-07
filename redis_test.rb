require 'sinatra'
require 'sinatra/reloader'
require 'redis'

get '/redis' do
  @redis = Redis.new
  @redis.set("mykey", "hello world")
  erb :redis
end

__END__
@@redis

<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title> Inline Template </title>
</head>
<body>
<h1> Worked! </h1>
<p><%= @redis.get("mykey") %>
</body>
</html>
