require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  parcel = Parcel.new(params.fetch('length').to_i(),params.fetch('width').to_i(),params.fetch('depth').to_i(),params.fetch('weight').to_i(),params.fetch('speed').to_i(),params.fetch('distance').to_i())
  @cost = parcel.cost_to_ship()
  erb(:results)

end
