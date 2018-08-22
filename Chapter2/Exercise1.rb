#How many hours in a year? Bennett 8/3/2018
puts "How many hours in a year?"
puts "Is it a leap year? awnser y/n"
awnser = gets.chomp.downcase

if awnser == "y"
  puts "The awnser is #{24*366}!"
else
  puts "The awnser is #{24*365}!"
end
