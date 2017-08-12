def ask question
  good_answer = false

  while (not good_answer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      good_answer = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end

  answer # return
end

puts 'Hello, please answer these questions!'

ask 'Do you like tacos?'
ask 'Do you like burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like burritos?'

puts 'Thanks!', wets_bed
