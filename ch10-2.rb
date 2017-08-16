def log description, &block
  puts 'Starting: ' + description
  blockReturn = block.call
  puts 'Finished: ' + description + ' -- Returned: ' + blockReturn
end

log("outer") do
  log("inner") do
    puts 'Inner says hi'
    'Hi!'
  end
  puts 'Outer says bye'
  'See you!'
end
