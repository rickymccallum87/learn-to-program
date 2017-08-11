bottle_count = 99

while bottle_count > 0
  
  bottle_count_after_taking = bottle_count - 1

  if bottle_count > 2
    # both plural
    before_taking = 'bottles'
    after_taking = 'bottles'
  elsif bottle_count == 2
    # first plural, second not
    before_taking = 'bottles'
    after_taking = 'bottle'
  else
    # first singular, second plural, bottle_count 'no more'
    before_taking = 'bottle'
    after_taking = 'bottles'
    bottle_count_after_taking = 'no more'
  end

  puts bottle_count.to_s + ' ' + before_taking + ' of beer on the wall, ' + bottle_count.to_s + ' ' + before_taking + ' of beer.'
  puts 'Take one down, pass it around, ' + bottle_count_after_taking.to_s + ' ' + after_taking + ' of beer on the wall!'
  puts ''

  bottle_count -= 1
end
