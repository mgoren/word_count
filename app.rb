require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/wordcount')

get('/') do
  erb(:form)
end

get('/wordcount') do
  phrase = params.fetch('phrase')
  word = params.fetch('word')

  if phrase == "" || word == ""
    @message = "Invalid input. Please fill in both input fields."
  elsif word.include?(" ")
    @message = "Invalid input. Please search for a single word only."
  else
    counter = phrase.wordcount(word)
    if counter == 1
      time_word = " time"
    else
      time_word = " times"
    end
    @message = "I found the word &ldquo;".concat(word).concat("&rdquo; ").concat(counter.to_s).concat(time_word).concat(" in your text.")
  end 

  erb(:wordcount)
end
