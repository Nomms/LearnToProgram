#improved ask method // Bennett Zweber 8.10.2018

def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts "please awnser yes or no"
    end
  end
end

puts "thanks for taking this survey\n"

ask "Do you like tacos"
ask "Do you like burritos"
wets_bed = ask "do you wet the bed"
ask "Do you like drinking horhcatas?"

puts "thanks for taking the survey again\n"

puts wets_bed
