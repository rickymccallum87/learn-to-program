puts 'Type in as many words as you like.'
puts 'Stop by pressing Enter on an empty line.'
item = gets.chomp
list = []

# add words to end of list
while item != ''
  list.push item
  item = gets.chomp
end

# debug list
list = [5,4,3,2,1]
puts list.to_s
i = 0

while i < list.length
  if list[i] == list.min
    list[i], list[0] = list[0], list[i]
  end
end
