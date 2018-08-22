#Old-School Roman Numerals // 8.10.2018 Bennett Zweber

puts "This will convert a number to the old school roman numerals"
input = gets.chomp.to_i

def roman_numeral int
  roman = ""
  roman = roman + 'M' * (int / 1000)
  roman = roman + 'D' * (int % 1000 / 500)
  roman = roman + 'C' * (int % 500 / 100)
  roman = roman + 'L' * (int % 100 / 50)
  roman = roman + 'X' * (int % 50 / 10)
  roman = roman + 'V' * (int % 10 / 5)
  roman = roman + 'I' * (int % 5 / 1)
  return roman
end

puts roman_numeral input
