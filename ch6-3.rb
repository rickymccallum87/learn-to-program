puts 'Starting year?'
current = gets.chomp.to_i
puts 'Ending year?'
final = gets.chomp.to_i

while current <= final
  # /4 yes, /100 no, /400 yes
  div4 = current % 4 == 0
  div100 = current % 100 == 0
  div400 = current % 400 == 0
  if (div4 and not div100) or div400
    puts current
  end

  current += 1
end
