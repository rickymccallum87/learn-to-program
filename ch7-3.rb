toc = ['Chapter 1: Numbers','page 1','Chapter 2: Letters','page 72','Chapter 3: Variables','page 118']
line_width = 50

puts 'Table of Contents'.center(line_width)
puts ''
puts toc[0].ljust(line_width/2) + toc[1].rjust(line_width/2)
puts toc[2].ljust(line_width/2) + toc[3].rjust(line_width/2)
puts toc[4].ljust(line_width/2) + toc[5].rjust(line_width/2)
