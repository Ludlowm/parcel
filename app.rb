require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')


get('/') do
  erb(:index)
end

get('/triangle') do
  length = params.fetch('length').to_i
  height = params.fetch('height').to_i
  width = params.fetch('width').to_i
  weight = params.fetch('weight').to_i
  distance = params.fetch('distance').to_i
  days = params.fetch('days').to_i
  @parcel = Parcel.new(length, height, width, weight, distance, days)
  erb(:parcel)
end
