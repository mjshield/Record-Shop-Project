require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require('pry')

Artist.delete_all
Album.delete_all

artist1 = Artist.new(
  'first_name' => 'Lady',
  'last_name' => 'Gaga'
  )
artist2 = Artist.new(
  'first_name' => 'Elvis',
  'last_name' => 'Presley'
  )

artist1.save()
artist2.save()


album1 = Album.new(
  'title' => 'The Fame',
  'genre' => 'Pop',
  'artist' => 'Lady Gaga',
  'current_stock' => 8,
  'ideal_stock' => 10
  )
album2 = Album.new(
  'title' => 'Promised Land',
  'genre' => 'Pop',
  'artist' => 'Elvis Presley',
  'current_stock' => 4,
  'ideal_stock' => 20
 )

album1.save()
album2.save()




binding.pry
nil