def weddingNumber number
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
    trillions = weddingNumber write
    numString += trillions + ' trillion'

    if left > 0
      numString += ' and '
    end
  end

  write = left / 1000000000
  left -= write * 1000000000

  if write > 0
    billions = weddingNumber write
    numString += billions + ' billion'

    if left > 0
      numString += ' and '
    end
  end

  write = left / 1000000
  left -= write * 1000000

  if write > 0
    millions = weddingNumber write
    numString += millions + ' million'

    if left > 0
      numString += ' and '
    end
  end

  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = weddingNumber write
    numString += thousands + ' thousand'

    if left > 0
      numString += ' and '
    end
  end

  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = weddingNumber write
    numString += hundreds + ' hundred'

    if left > 0
      numString += ' and '
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
      numString += ' and '
    end
  end

  write = left
  left = 0

  if write > 0
    numString += onesPlace[write-1]
  end

  numString # return
end

puts weddingNumber(0)
puts weddingNumber(9)
puts weddingNumber(10)
puts weddingNumber(11)
puts weddingNumber(17)
puts weddingNumber(32)
puts weddingNumber(88)
puts weddingNumber(99)
puts weddingNumber(100)
puts weddingNumber(101)
puts weddingNumber(234)
puts weddingNumber(3211)
