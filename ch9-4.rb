class Dragon

  def initialize name
    @name = name
    @asleep = false
    @belly = 10 # full
    @intestine = 0 # doesn't need to go

    puts @name + ' is born.'
    puts 'To interact with ' + @name + ', type: feed, walk, bed, toss, or rock.'
  end

  def feed
    puts 'You feed ' + @name + ' gourmet, vegan dragon kibble.'
    @belly = 10
    time
  end

  def walk
    puts 'You and ' + @name + ' take a stroll around the block.'
    @intestine = 0
    time
  end

  def bed
    puts 'With a kiss on the forehead, you put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        time
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts @name +  ' giggles, which singes your eyebrows.'
    time
  end
  
  def rock
    @asleep = true
    puts 'You rock ' + @name + ' gently and the little dragon dozes off...'
    time
    if @asleep
      @asleep = false
      puts '... but wakes when you stop.'
    end
  end

  def dispatch cmd
    if cmd == 'feed' or cmd == 'f'
      self.feed
    elsif cmd == 'walk' or cmd == 'w'
      self.walk
    elsif cmd == 'bed' or cmd == 'b'
      self.bed
    elsif cmd == 'toss' or cmd == 't'
      self.toss
    elsif cmd == 'rock' or cmd == 'r'
      self.rock
    end
  end

  private

  def hungry?
    @belly <= 2
  end

  def poopy?
    @intestine >= 8
  end

  def time
    if @belly > 0
      @belly -= 1
      @intestine += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving! In desperation, he ate YOU!'
      exit
    end

    if @intestine >= 10
      @intestine = 0
      puts 'Whoops! ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

puts 'What would you like to name your dragon?'
# fix gender above!
desiredName = gets.chomp

pet = Dragon.new desiredName
cmd = ''

while cmd != 'exit'
  cmd = pet.dispatch(gets.chomp)
end

puts 'What fun we\'ve had!'
