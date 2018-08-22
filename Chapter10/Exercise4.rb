#non-recursively dictionary sorting // 8.10.2018 Bennett Zweber

puts "enter a list of words to sort, press enter to exit"

unsorted_array = []
sorted_array = []
n = 0
input = " "

while input != ""
  input = gets.chomp
  unsorted_array[n] = input
  n += 1
end

def sort(array)
  swap = true
  while swap == true
    swap = false
    (array.length - 1).times do |x|
      if array[x].downcase < array[x+1].downcase
        array[x], array[x+1] = array[x+1], array[x]
        swap = true
      end
    swap == false
    end
  end
  puts array
end

puts sort(unsorted_array)
