class Die
  
  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat(hackedNumber)

    if hackedNumber < 0
      hackedNumber = 0
    elsif hackedNumber > 6
      hackedNumber = 6
    end
    @numberShowing = hackedNumber
  end
end

myDie = Die.new
puts 'roll', myDie.roll
puts 'showing', myDie.showing
puts 'cheat'
myDie.cheat(gets.chomp.to_i)
puts 'showing', myDie.showing
puts 'roll', myDie.roll
puts 'showing', myDie.showing
