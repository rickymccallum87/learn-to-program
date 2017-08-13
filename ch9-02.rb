 class Dragon

  def initialize name
    @name = name
    @asleep = false
    @belly = 10 # full
    @intestine = 0 # doesn't need to go

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @belly = 10
    time
  end

  def walk
    puts 'You walk ' + @name + '.'
    @intestine = 0
    time
  end

  def bed
    puts 'You put ' + @name + ' to bed.'
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
    puts 'He giggles, which singes your eyebrows.'
    time
  end
  
  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    time
    if @asleep
      @asleep = false
      puts '... but wakes when you stop.'
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

pet = Dragon.new 'Elias'
pet.feed
pet.toss
pet.walk
pet.bed
pet.rock
pet.bed
pet.bed
pet.bed
pet.bed
