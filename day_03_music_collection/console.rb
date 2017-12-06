require('pry-byebug')
require_relative('./models/albums')
require_relative('./models/artists')



artist1 = Artists.new({
  'first_name' => 'Shania',
  'last_name' => 'Twain'

  })
artist1.save

album1 = Albums.new({
  'album_name' => 'Lets go girls',
  'genre' => 'Pop',
    'artist_id' => artist1.id
  })

albums = Albums.all

artists = Artists.all


album1.save

album1.artist_in_album


binding.pry
nil
