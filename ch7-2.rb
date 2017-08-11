puts 'Enter as many words as you like and stop by pressing Enter twice.'
item = gets.chomp
list = []

while item != ''
  # add word to end of list with push
  list.push item
  item = gets.chomp
end

# start new list with first item in original list
sorted_list = [list[0]]


list.each do |item|
  if item < sorted_list[0]
    # add to beginning
    sorted_list = [item] + sorted_list
  else
    # find the right spot
  end
end

puts sorted_list
