class Players
  attr_accessor :lives
  def initialize(lives)
    lives = lives.to_i
   @lives = lives
  end
end 


