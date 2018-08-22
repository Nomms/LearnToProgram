#Table of Contents 2: Array edition // 8.9.2018
n = 0
contents = ["Chapter 1:", "Getting Started", "page  1", "Chapter 2:", "Numbers", "page  9", "Chapter 3:", "Letters", "page 13",]
puts "Table of Contents".center(60)

contents.each do |place|
  if n == 0
    print(place.ljust(15))
    n += 1
  elsif n == 1
    print(place.ljust(45))
    n += 1
  else
    puts(place.rjust(0) + "\n\n")
    n = 0
  end
end
