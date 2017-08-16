$nestDepth = -1

def log description, &block
  $nestDepth += 1
  indent = ' ' * ($nestDepth * 2)
  puts indent + 'Starting: ' + description
  blockReturn = block.call
  puts indent + 'Finished: ' + description + ' -- Returned: ' + blockReturn.to_s
  $nestDepth -= 1
end

log("outer") do
  log("inner") do
    log("tri") do
      log("quad") do
        10 / 5
      end
      'testing'
    end
    4 * 2
  end
  'Outer block rules!'
end
