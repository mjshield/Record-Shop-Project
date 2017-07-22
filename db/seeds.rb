require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require('pry')


artist1 = Artist.new(
  'artist_name' => 'Lady Gaga'
  )

artist2 = Artist.new(
  'artist_name' => 'Elvis Presley'
  )

artist1.save()
artist2.save()


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
  'current_stock' => 4,
  'ideal_stock' => 20
 )

album1.save()
album2.save()
