#Shuffle // Bennett Zweber 8.21.2018
sorted_array = ['a', 'bus', 'car', 'cat', 'dave', 'don', 'doug']

def shuffle array
  array.each.with_index(0) do |item, i|
    random = rand(array.length/2)
    if (random + i) < array.length
      array[i], array[i + random] = array[i + random], array[i]
    end
    end
end


puts shuffle(sorted_array)
