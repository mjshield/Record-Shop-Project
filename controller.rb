require('pry')
require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/artist')
require_relative('./models/album')

#INDEX
get '/shop' do
  @albums = Album.find_all
  erb(:index)
end