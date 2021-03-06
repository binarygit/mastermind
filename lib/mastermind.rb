#!/usr/bin/ruby
require 'debug'
require 'colorize'
require_relative 'Player'

class Mastermind
  attr_reader :moves_made, :code_maker

  def initialize
    @human = Player.new('Avi')
    @computer = Player.new
  end

  def play
    # display_main_menu
    determine_code_maker
    determine_code_breaker
    loop do
      @guess = get_guess
      check_guess
      return display_win_screen if correctly_guessed
      return display_lose_screen if moves_made > 11
    end
  end

  private

  def display_main_menu
    puts 'Welcome to the game of Mastermind'
    puts ''
    puts 'The rules are simple'
    print '  1  '.colorize(:black).on_light_blue
    print '  2  '.colorize(:black).on_light_red
    print '  3  '.colorize(:black).on_light_yellow
    print '  4  '.colorize(:black).on_light_cyan
  end

  def code
    @code = @code_maker.create_code
  end

  def determine_code_maker
    choice = nil
    until choice == '1' || choice == '2'
      puts 'Press 1 to become code maker.'
      puts 'Press 2 to become code breaker.'
      choice = gets.chomp
    end
    @code_maker = @human if choice == '1'
    @code_maker = @computer if choice == '2'
  end

  def determine_code_breaker
    @code_breaker = @human and return if @code_maker == @computer

    @code_breaker = @computer
  end

  def get_guess
    @code_breaker.guess
  end
end

game = Mastermind.new
game.play
