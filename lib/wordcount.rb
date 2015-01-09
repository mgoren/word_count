class String
  define_method(:wordcount) do |special_word|
    phrase = self
    counter = 0

    phrase_array = phrase.split()
    phrase_array.each() do |word_to_check|
      if word_to_check == special_word
        counter += 1
      end
    end

    return counter
  end
end
