class OrangeTree

  def initialize
    @age = 1
    @height = 1
    @oranges = 0
    puts 'You plant an orange tree sapling.'
  end

  def measure
    puts 'It measures ' + @height.to_s + ' meters tall.'
  end

  def nextYear
    @age += 1
    @height += 1
    
    if @age > 5
      puts 'The tree draws its last breath of sunlight and dies.'
    end

    if @age > 3
      if @oranges > 0
        puts 'The tree sheds last year\'s oranges.'
      end
      @oranges = 2 * @age
    end
  end

  def count
    if @oranges > 0
      puts @oranges.to_s + ' beautiful oranges are on display this year.'
    else
      puts 'Hm, no oranges right now. Maybe next year?'
    end
  end

  def pluck
    if @oranges > 0
      @oranges -= 1
      puts 'You pluck one and take a bite. Mmm, delicious.'
    else
      puts 'There are no oranges to pick. Better check again next year.'
    end
  end
end

tree = OrangeTree.new

tree.measure
tree.count
tree.pluck
tree.nextYear
tree.measure
tree.count
tree.pluck
tree.nextYear
tree.measure
tree.count
tree.pluck
tree.nextYear
tree.measure
tree.count
tree.pluck
tree.nextYear
