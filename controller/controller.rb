require('sinatra')
require('sinatra/contrib/all')
# require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')

get '/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb( :index )
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
