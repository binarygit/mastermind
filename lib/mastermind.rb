#!/usr/bin/ruby
require 'debug'
require_relative 'core_extentions/string/colorize.rb'

class Mastermind
  using Colorize

  def play
    display_main_menu
  end

  def display_main_menu
    puts 'Hello'.red
  end
end

Mastermind.new.play
