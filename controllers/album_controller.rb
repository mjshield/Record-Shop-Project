require('pry')
require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artist')
require_relative('../models/album')

#INDEX
get '/albums' do
  @albums = Album.find_all
  erb(:"albums/index")
end

#NEW
get '/albums/new' do
  @artists = Artist.find_all
  erb(:"albums/new")
end

#CREATE
post '/albums' do
  album = Album.new(params)
  album.save()
  redirect to("/albums")
end

#SHOW
get '/albums/:id' do
  @album = Album.find(params['id'])
  erb(:"albums/show")
end


#EDIT


#UPDATE


#DELETE


#DESTROY

