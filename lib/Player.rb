#!/usr/bin/ruby

class Player
  def initialize(name = 'skynet')
    @name = name
  end

  def create_code
    code = []
    if skynet?
      4.times { code << rand(1..6) }
    end
    code
  end

  def guess
    if skynet?
    else
      loop do
        puts 'Please make a guess'
        guess = gets.chomp.to_i
        break if (1..6).include?(guess)
      end
    end
  end

  private

  def skynet?
    @name == 'skynet'
  end
end
