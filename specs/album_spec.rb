require('pry')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')

artist1 = Artist.new(
  'artist_name' => 'Lady Gaga'
  )

artist2 = Artist.new(
  'artist_name' => 'Elvis Presley'
  )


album1 = Album.new(
  'title' => 'The Fame',
  'genre' => 'Pop',
  'artist_id' => artist1.id,
  'current_stock' => 8,
  'ideal_stock' => 10
  )

album2 = Album.new(
  'title' => 'Promised Land',
  'genre' => 'Pop',
  'artist_id' => artist2.id,
  'current_stock' => 5,
  'ideal_stock' => 10
 )

 album3 = Album.new(
   'title' => 'Promised Land',
   'genre' => 'Pop',
   'artist_id' => artist2.id,
   'current_stock' => 2,
   'ideal_stock' => 10
  )

 p album1.stock_level
 p album2.stock_level
 p album3.stock_level

 binding.pry
 nil