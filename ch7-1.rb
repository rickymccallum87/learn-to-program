puts 'Enter as many words as you like, ending with \'done\''
item = gets.chomp
list = []

while item.downcase != 'done'
  # add word to end of list with push
  list.push item
  item = gets.chomp
end

# sort and display
puts list.sort
