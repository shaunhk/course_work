require('sinatra')
require('sinatra/contrib/all')

get '/hi' do
  "Hello!"
end

get '/roll-die' do
  "#{rand(1..6)}"
end

get "/name/:first/:last" do
  return "Your name is #{params[:first]} #{params[:last]}"
end

get "/friends/:number" do
  friends = ["Colin", "Louise", "Stevie"]
  index = params[:number].to_i - 1
  return friends[index]
end

get "/square/:num" do
  num = params[:num].to_i
  return "Number squared = #{num * num}"
end

get "/pet/:hello" do
  "Hello pet"
end #This is the path that will be followed for /pet

get "/pet/:name" do
  "Hello #{params[:name]}"
end #Not this one

get "/pet/hi/:name" do
  "Hello #{params[:name]}"
end #This path gets followed
