require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('./controllers/album_controller')

get '/' do
  erb( :index )
end