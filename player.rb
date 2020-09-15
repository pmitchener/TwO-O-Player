require './util'
class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = Util::NUMBER_OF_LIVES
  end

  def lose_Life()
    @lives = @lives - 1
  end
end