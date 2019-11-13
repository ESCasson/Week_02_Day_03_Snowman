class Game
attr_reader :guessed_letters

def initialize(input_player, input_hidden_word)
  @player = input_player
  @hidden_word = input_hidden_word
  @guessed_letters =[]


end


def add_guess(guess)
  @guessed_letters.push(guess)
end

def select_last_guess()
  @guessed_letters.last()
end


def letter_guess()
  guess = select_last_guess()
  array = @hidden_word.hidden_word_to_array

  for letter in array
    if letter == guess
      return true
    end
  end
  return false
end



end
