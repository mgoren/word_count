require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/wordcount')

get('/') do
  erb(:form)
end

get('/wordcount') do

  erb(:wordcount)
end
