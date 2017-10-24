require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')

get '/weapons' do
  @weapons = Weapon.all()
  erb( :"weapons/index" )
end

get '/weapons_index' do
  @weapons = Weapon.all()
    erb( :"weapons/weapons_index" )
end

get '/weapons/new' do
  @weapons = Weapon.all()
  erb( :new )
end

post '/weapons' do
  @weapons = Weapon.new(options)
  @weapons.save()
  erb( :create )
end

post '/weapons/delete/:id' do
  @weapons = weapons.find( params[:id].to_i)
  @weapons.delete
  redirect '/weapons'
end

post '/weapons/:id' do
  @weapons = Weapon.new( params )
  @weapons.update
  redirect '/weapons'
end

get '/weapons/:id/edit' do
  @weapons = Weapon.find(params[:id].to_i)
  erb(:update)
end

get '/weapons/:id' do
  @weapons = Weapon.find( params[:id].to_i )
  erb(:show)
end
