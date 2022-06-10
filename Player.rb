#!/usr/bin/ruby

class Player
  attr_reader :name
  def initialize(name='skynet')
    @name = name
  end

  def create_code
    code = []
    if skynet?
      4.times { code << rand(1..6) }
    end
    code
  end

  private

  def skynet?
    name == 'skynet'
  end
end
