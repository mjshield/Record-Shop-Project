require_relative('../models/album.rb')
require_relative('../models/artist.rb')


artist1 = Artist.new(
  'artist_name' => 'Lady Gaga'
  )

artist2 = Artist.new(
  'artist_name' => 'Elvis Presley'
  )

artist3 = Artist.new(
  'artist_name' => 'Johnny Cash'
  )

artist4 = Artist.new(
  'artist_name' => 'Kanye West'
  )

artist1.save()
artist2.save()
artist3.save()
artist4.save()


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

album3 = Album.new(
  'title' => 'Hurt',
  'genre' => 'Country',
  'artist_id' => artist3.id,
  'current_stock' => 15,
  'ideal_stock' => 40
 )

album4 = Album.new(
  'title' => 'Yeezus',
  'genre' => 'Hip Hop',
  'artist_id' => artist4.id,
  'current_stock' => 11,
  'ideal_stock' => 10
 )

album5 = Album.new(
  'title' => 'At Folsom Prison',
  'genre' => 'Pop',
  'artist_id' => artist3.id,
  'current_stock' => 20,
  'ideal_stock' => 20
 )

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
