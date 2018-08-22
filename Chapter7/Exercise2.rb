#DEAF GRANDMA // 8.8.2018 Bennett Zweber
i = 0
while true
  input = gets.chomp
  if input != input.upcase
    puts "HUH!? SPEAK UP, SONNY!"
    i = 0
  elsif input ==  "BYE"
    i += 1
    if i == 3
      break
    end
  elsif input == input.upcase
    puts "NO, NOT SINCE #{rand(21) + 1930}!"
    i = 0
  end

end
