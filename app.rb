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
  if @counter == 1
  	@time_word = "time"
  else
  	@time_word = "times"
  end
  erb(:wordcount)
end
