require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tama')
require ('pry')

get('/') do
  erb(:index)
end

get('/start') do
  @@test_tama = Tama.new(3,3,3)
  redirect('/')
end

post('/feed') do
  @@test_tama.add_satiety
  @@test_tama.time_happens
  redirect('/')
end

post('/nap') do
  @@test_tama.add_perkiness
  @@test_tama.time_happens
  redirect('/')
end

post('/play') do
  @@test_tama.add_happiness
  @@test_tama.time_happens
  redirect('/')
end
