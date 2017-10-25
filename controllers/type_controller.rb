require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/weapons.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/type.rb')

get '/type' do
  @type = Type.all()
  erb( :"type/index" )
end

get '/type/new' do
  @type = Type.all
  erb( :"type/new" )
end

post '/type' do
  @type = Type.new(params)
  @type.save()
  redirect ('/type')
end
