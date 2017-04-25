require('sinatra')
require('sinatra/reloader')
require('whenever')
also_reload('lib/**/*.rb')
require('./lib/tama')

get('/') do
  @test_tama = Tama.new(3,3,3)
  erb(:index)
end

post('/feed') do
  @test_tama.add_satiety
  redirect('/')
end

post('/nap') do
  @test_tama.add_perkiness
  redirect('/')
end

post('/play') do
  @test_tama.add_happiness
  redirect('/')
end
