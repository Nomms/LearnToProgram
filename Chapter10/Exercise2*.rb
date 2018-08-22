#recursively sorting sorting // 8.10.2018 Bennett Zweber
#This is quite difficult using bubble sort. I never had to impliment it recursively in my C class I took all those years ago ;-; I was stuck on implimenting bubble sort for like two days
#I really don't want to impeade my progress anymore
puts "enter a list of words to sort, press enter to exit"

unsorted_array = []
sorted_array = []
n = 0
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
      if array[x] < array[x+1]
        array[x], array[x+1] = array[x+1], array[x]
        swap = true
      end
    swap == false
    end
  end
end

puts sort(unsorted_array)
