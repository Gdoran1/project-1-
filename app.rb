require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/weapon_controller.rb')
require_relative('controllers/man_controller.rb')

get '/' do
  erb ( :index )
end
