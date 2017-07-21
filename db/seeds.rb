require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require('pry')

artist1 = Artist.new(
  'first_name' => 'Lady',
  'last_name' => 'Gaga'
  )
artist1.save()


album1 = Album.new(
  'title' => 'The Fame',
  'genre' => 'Pop',
  'artist' => 'Lady Gaga',
  'current_stock' => 8,
  'ideal_stock' => 10
  )
album1.save()





binding.pry
nil