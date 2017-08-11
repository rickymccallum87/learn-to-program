puts 'Hello, dearie.'
bye_count = 0
statement = gets.chomp

while statement != 'BYE' || bye_count < 3
  if statement == statement.upcase
    # no, not since 1938
    long_ago = rand(20) + 1930
    puts 'No, not since ' + long_ago.to_s
  else
    # what's that?
    puts 'What? You\'ll have to speak up!'
  end

  statement = gets.chomp
  if statement == 'BYE'
    # add 1
    bye_count += 1
  else
    # reset bye count
    bye_count = 0
  end
end

puts 'Goodbye, sweetie.'
