require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/wordcount')

get('/') do
  erb(:form)
end

get('/wordcount') do
  phrase = params.fetch('phrase')
  @word = params.fetch('word')
  @counter = phrase.wordcount(@word)
  erb(:wordcount)
end
