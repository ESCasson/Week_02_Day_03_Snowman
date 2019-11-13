class Hidden_word
attr_reader :hidden_word

  def initialize(word)
    @hidden_word = word
  end

  def hidden_word_to_array()
    @hidden_word.chars()
  end

  def array_to_star()
    hidden_array = []
    my_array = hidden_word_to_array()
    for letter in my_array
      hidden_array.push("*")
    end
    return hidden_array
  end

  def display_hidden()
  word = array_to_star()
  word.join()
  end

  # def letter_guess()
  #   guess = @game.select_last_guess
  #   array = hidden_word_to_array
  #   for letter in array
  #     if letter == guess
  #       return true
  #     end
  #   return false
  #   end
  # end


end
