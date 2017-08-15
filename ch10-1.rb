def clock &perHour
  hourCounter = 0
  currentHour = (Time.now.hour) % 12
  while currentHour > hourCounter
    perHour.call
    hourCounter += 1
  end
  currentHour
end

clock do
  puts 'DONG!'
end
