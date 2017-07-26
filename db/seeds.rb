require_relative('../models/album.rb')
require_relative('../models/artist.rb')


artist1 = Artist.new('artist_name' => 'Lady Gaga')

artist2 = Artist.new('artist_name' => 'Elvis Presley')

artist3 = Artist.new('artist_name' => 'Johnny Cash')

artist4 = Artist.new('artist_name' => 'Kanye West')

artist5 = Artist.new('artist_name' => 'Michael Jackson')

artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()


album1 = Album.new(
  'title' => 'The Fame',
  'genre' => 'Pop',
  'artist_id' => artist1.id,
  'current_stock' => 8,
  'ideal_stock' => 10,
  'thumbnail' => 'https://upload.wikimedia.org/wikipedia/en/d/dd/Lady_Gaga_%E2%80%93_The_Fame_album_cover.png'
  )

album2 = Album.new(
  'title' => 'Promised Land',
  'genre' => 'Pop',
  'artist_id' => artist2.id,
  'current_stock' => 4,
  'ideal_stock' => 20,
  'thumbnail' => 'https://images-na.ssl-images-amazon.com/images/I/512ZpnnsB1L.jpg'
 )

album3 = Album.new(
  'title' => 'Hurt',
  'genre' => 'Country',
  'artist_id' => artist3.id,
  'current_stock' => 15,
  'ideal_stock' => 40,
  'thumbnail' => 'https://upload.wikimedia.org/wikipedia/en/9/9c/Johnny_Cash_-_Personal_Jesus_and_Hurt_single.jpg'
 )

album4 = Album.new(
  'title' => 'Yeezus',
  'genre' => 'Hip Hop',
  'artist_id' => artist4.id,
  'current_stock' => 11,
  'ideal_stock' => 10,
  'thumbnail' => 'https://upload.wikimedia.org/wikipedia/en/0/03/Yeezus_album_cover.png'
 )

album5 = Album.new(
  'title' => 'At Folsom Prison',
  'genre' => 'Pop',
  'artist_id' => artist3.id,
  'current_stock' => 20,
  'ideal_stock' => 20,
  'thumbnail' => 'https://upload.wikimedia.org/wikipedia/en/b/bf/Johnny_Cash_At_Folsom_Prison.jpg'
 )

album6 = Album.new(
  'title' => 'Thriller',
  'genre' => 'Pop',
  'artist_id' => artist5.id,
  'current_stock' => 20,
  'ideal_stock' => 38,
  'thumbnail' => 'https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png'
 )

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()