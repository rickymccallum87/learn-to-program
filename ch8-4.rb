def englishNumber number

  if number.is_a?(String)
    return number
  end

  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five', 
    'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty',
    'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen',
  'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number

  write = left / 1000000000000
  left -= write * 1000000000000

  if write > 0
    trillions = englishNumber write
    numString += trillions + ' trillion'

    if left > 0
      numString += ' '
    end
  end

  write = left / 1000000000
  left -= write * 1000000000

  if write > 0
    billions = englishNumber write
    numString += billions + ' billion'

    if left > 0
      numString += ' '
    end
  end

  write = left / 1000000
  left -= write * 1000000

  if write > 0
    millions = englishNumber write
    numString += millions + ' million'

    if left > 0
      numString += ' '
    end
  end

  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = englishNumber write
    numString += thousands + ' thousand'

    if left > 0
      numString += ' '
    end
  end

  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = englishNumber write
    numString += hundreds + ' hundred'

    if left > 0
      numString += ' '
    end
  end

  write = left/10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      numString += teenagers[left-1]

      left = 0
    else
      numString += tensPlace[write-1]
    end

    if left > 0
      numString += '-'
    end
  end

  write = left
  left = 0

  if write > 0
    numString += onesPlace[write-1]
  end

  numString # return
end


bottle_count = 9999

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

  puts englishNumber(bottle_count).capitalize + ' ' + before_taking + ' of beer on the wall, ' + englishNumber(bottle_count) + ' ' + before_taking + ' of beer. Take one down, pass it around, ' + englishNumber(bottle_count_after_taking) + ' ' + after_taking + ' of beer on the wall!'

  bottle_count -= 1
end
