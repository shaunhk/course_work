require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/hogwarts')
require_relative('./models/house')
also_reload('.models/*')

get '/hogwarts' do
  @students = Student.view_all()
  erb(:index)
end

get '/hogwarts/create' do
  @houses = House.find_all()
  erb(:create)
end

post '/hogwarts' do
  @new_student = Student.new(params)
  @new_student.save()
  erb(:new)
end

get '/hogwarts/houses' do
  @houses = House.find_all()
  erb(:houses)
end

get '/hogwarts/:id/houses' do
  @house = House.find(params[:id])
  erb(:house)
end
