class String
  define_method(:wordcount) do |special_word|
    phrase = self.downcase()
    special_word.downcase!()
    counter = 0
    punctuation = [".",",","!","/",";",":","-"]

    phrase_array = phrase.split()
    phrase_array.each() do |word_to_check|

      # first strip punctuation
      word_array = word_to_check.split("")
      stripped_word_array = []
      word_array.each() do |letter|
        if ! punctuation.include?(letter)
          stripped_word_array.push(letter)
        end
      end
      stripped_word = stripped_word_array.join("")

      if stripped_word == special_word
        counter += 1
      end
    end

    return counter
  end
end
