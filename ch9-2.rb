puts 'What year were you born?'
birth_year = gets.chomp.to_i

puts 'What month were you born?'
birth_month = gets.chomp.to_i

puts 'What day were you born?'
birth_day = gets.chomp.to_i

birthdays = Time.mktime(birth_year, birth_month, birth_day)
birthdays += 60 * 60 * 24 * 365

while birthdays < Time.now
  puts 'Spank!'

  birthdays += 60 * 60 * 24 * 365
end
