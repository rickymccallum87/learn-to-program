puts 'Starting year?'
current = 280 # gets.chomp.to_i
puts 'Ending year?'
last = 420 # gets.chomp.to_i

while current <= last
  # /4 yes, /100 no, /400 yes
  div4 = current % 4 == 0
  div100 = current % 100 == 0
  div400 = current % 400 == 0
  if div4
    puts current
  end

  current += 1
end
