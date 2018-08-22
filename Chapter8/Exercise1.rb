#User input array // 8.9.2018 Bennett Zweber

array = []
input = " "
puts "Give me stuff, I'll sort it!!"

while true
  input = gets.chomp
  array.push input
  if input == "" then break end
end

puts array.sort
