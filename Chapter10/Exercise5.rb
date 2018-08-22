#expanded english number // Bennett Zweber 8.21.2018
#this is super scary. send help my confidence is 0

def english_number number

if number < 0
  return "No negative numbers please"
end

if number == 0
  return "zero"
end


num_string = "" #This is the english version of the number


ones_place = ['one', 'two', 'three', 'four', 'five',
              'six', 'seven', 'eight', 'nine']

tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty',
              'sixty', 'seventy', 'eighty', 'ninty']

teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
         'sixteen', 'seventeen' 'eighteen', 'nineteen']



left = number            #left is how much we have to write out
write = left/100         #how many hundreds left?
left = left - write*100  #subtract off those 100s
                         #write = what we're writing right now


if write > 0
  hundreds = english_number write
  hundreds.to_s!
  num_string = num_string + hundreds + ' hundred'
  if left > 0                                     #adds a space if there's a remainder
    num_string = num_string + ' '
  end
end



write = left / 10
left = left - write * 10



if write > 0
  if ((write == 1) and (left > 0 ))          #since we can't write tenty-two insted of twelve
                                             #we have to catch this edge case
    num_string = num_string + teens[left-1]
                                            #the -1 matches up the index. i.e. teens[0] is eleven
    left = 0                                #the -1 catches this

  else
    num_string = num_string + tens_place[write-1]  #the -1 matches up the index. i.e. teens[0] is eleven
  end                                              #the -1 catches this

  if left > 0
    num_string = num_string + ' ' #adds a space if there's a remainder
  end
end

write = left
left = 0

if write > 0
  num_string = num_string + ones_place[write-1]   #the -1 matches up the index. i.e. teens[0] is eleven
return num_string
end
end
puts english_number(5)

puts english_number(63)
puts english_number(74)
puts english_number(532)
puts english_number(932)
puts english_number(100001).so_s
puts english_number(1000)
