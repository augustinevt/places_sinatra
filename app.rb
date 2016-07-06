require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place')

get('/') do
  new_place = Place.new('sydney')
  new_place.save()
  @places = Place.all()
  erb(:index)
end
