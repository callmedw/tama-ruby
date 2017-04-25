require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tama')

get('/') do
  @test_tama = Tama.new(3,3,3)
  erb(:index)
end
