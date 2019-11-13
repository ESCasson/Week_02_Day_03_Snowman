require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../hidden_word")
require_relative("../player")

class GameTest < Minitest::Test

def setup
  @new_player = Player.new("Bob")
  @new_hidden_word = Hidden_word.new("Clever")
  @my_game = Game.new(@new_player, @new_hidden_word)
end

def test_created_an_empty_letters_guessed_array
  assert_equal(0, @my_game.guessed_letters.length() )
end

def test_letter_passed_to_guessed_letters_array
  guess = "C"
  @my_game.add_guess(guess)
  assert_equal(1, @my_game.guessed_letters.length)
end

def test_return_last_guess_in_array
  @my_game.add_guess("a")
  @my_game.add_guess("e")

  assert_equal("e", @my_game.select_last_guess)
end


def test_letter_in_word__is_there
  #given the word is in an array and we  have a guessed_letters
  #then return true if the letter is test_create_hidden_word__word_equal_to_word
  #guessed_letter = 'C'
  @my_game.add_guess("a")
  @my_game.add_guess("e")
  assert_equal(true, @my_game.letter_guess())
end

def test_letter_in_word__is_not_there
  #given the word is in an array and we  have a guessed_letters
  #then return true if the letter is test_create_hidden_word__word_equal_to_word
  #guessed_letter = 'z'
  @my_game.add_guess("a")
  @my_game.add_guess("f")
  assert_equal(false, @my_game.letter_guess())
end





end
