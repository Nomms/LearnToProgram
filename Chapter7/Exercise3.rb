#Leap Years // 8.8.2018 Bennett Zweber
#this is a bad solution and I recognize that, Should have used an || to not violate DRY. Oh well

puts "enter an end year"
starting = gets.chomp.to_i
puts "enter a start year"
ending = gets.chomp.to_i

while starting > ending
  if starting % 400 == 0
    puts "#{starting} is a leap year!!"
  elsif starting % 100 == 0
    puts "#{starting} is not a leap year :c"
  elsif starting % 4 == 0
     puts "#{starting} is a leap year!!"
  else
    puts "#{starting} is not a leap year :c"
  end
  starting = starting - 1
end
