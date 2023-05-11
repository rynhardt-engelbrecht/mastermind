require_relative 'game_logic'
require_relative 'display'
require_relative 'text_output'

class Player
  # include Display
  include GameLogic
  include TextOutput

  def initialize
    @key = random_key
  end

  private

  def random_key
    result = (1..4).map { OPTIONS.sample }
  end

  def player_guess
    result = gets.chomp
    return result if result.match(/^[1-6]{4}$/)
    return result if %[q exit].include?(result.downcase)

    puts 'Invalid input, remember the rules!>>'
    player_guess
  end

  def play_game
    (1..12).each do |n|
      puts "Turn #{n}"
      @guess = player_guess.split('')

      break if %[q exit].include?(result.downcase)

      # output the player's guess
      break if solved?(key, guess)

      # output the clues to show the player
    end
  end

  def game
    puts 'The key has been generated, time to make the first guess>>'
    play_game
    # code to be executed after the game has been completed
  end
end
