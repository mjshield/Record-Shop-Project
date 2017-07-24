require('pry')
require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artist')
require_relative('../models/album')

#INDEX
get '/artists' do
  @artists = Artist.find_all
  erb(:"artists/index")
end

#NEW
get '/artists/new' do
  erb(:"artists/new")
end

#CREATE
post '/artists' do
  artist = Artist.new(params)
  artist.save()
  redirect to("/artists")
end

#SHOW
get '/artists/:id' do
  @artist = Artist.find(params['id'])
  erb(:"artists/show")
end

#EDIT
get '/artists/:id/edit' do
  @artist = Artist.find(params['id'])
  erb(:"artists/edit")
end

#UPDATE
post '/artists/:id' do
  artist = Artist.new(params)
  artist.update
  redirect to("/artists/#{params['id']}")
end

#DESTROY
post '/artists/:id/delete' do
  artist = Artist.find(params['id'])
  artist.delete
  redirect to("/artists")
end
