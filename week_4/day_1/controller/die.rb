require('sinatra')
require('sinatra/contrib/all')

get '/die' do
  return rand(1..6)
end
