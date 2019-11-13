require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../hidden_word")
require_relative("../player")

class Hidden_wordTest < Minitest::Test

def setup
  @word = Hidden_word.new("Clever")
  @new_player = Player.new("Bob")
  @game = Game.new(@new_player, @new_hidden_word)
end

def test_create_hidden_word__word_equal_to_word
  assert_equal("Clever", @word.hidden_word)
end

def test_hidden_word_to_array
  expected_value = ["C", "l", "e", "v", "e", "r"]
  assert_equal(expected_value, @word.hidden_word_to_array())
end

def test_array_of_stars
  @word.hidden_word_to_array
  expected_value = ["*", "*", "*", "*", "*", "*"]
  assert_equal(expected_value, @word.array_to_star())
end

def test_word_can_be_displayed__hidden
  @word.hidden_word_to_array
  @word.array_to_star
  assert_equal("******", @word.display_hidden())
end

# def test_letter_in_word__is_there
#   #given the word is in an array and we  have a guessed_letters
#   #then return true if the letter is test_create_hidden_word__word_equal_to_word
#   #guessed_letter = 'C'
#   @word.hidden_word_to_array
#   assert_equal(true, @word.letter_guess())
# end
#
# def test_letter_in_word__is_not_there
#   #given the word is in an array and we  have a guessed_letters
#   #then return true if the letter is test_create_hidden_word__word_equal_to_word
#   #guessed_letter = 'z'
#   @word.hidden_word_to_array
#   assert_equal(false, @word.letter_guess())
# end

end
