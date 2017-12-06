require('pry-byebug')
require_relative('./models/albums')
require_relative('./models/artists')



artist1 = Artists.new({
  'first_name' => 'Shania',
  'last_name' => 'Twain'
  })
