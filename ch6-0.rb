command = gets.chomp

while command.downcase != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'
