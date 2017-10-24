require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')

get '/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb( :"manufacturers/index" )
end

get '/manufacturers/new' do
  @manufacturers = Manufacturer.all
  erb( :new )
end

post '/manufacturers' do
  @manufacturers = Manufacturer.new(options)
  @manufacturers.save()
  erb( :create )
end

post '/manufacturers/delete/:id' do
  @manufacturers = manufacturer.find( params[:id].to_i)
  @manufacturers.delete
  redirect '/manufacturers'
end

post '/manufacturers/:id' do
  @manufacturers = Manufacturer.new( params )
  @manufacturers.update
  redirect '/manufacturers'
end

get '/manufacturers/:id/edit' do
  @manufacturers = Manufacturer.find(params[:id].to_i)
  erb(:update)
end

get '/manufacturers/:id' do
  @manufacturers = Manufacturer.find( params[:id].to_i )
  erb(:show)
end
