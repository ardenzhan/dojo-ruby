puts "Ruby Puzzles"
puts


puts "1"
# Print the sum of all numbers in the array. 
# Also return an array that only include numbers greater than 10
def greater_than_10(nums)
  return nums.select { |num| num > 10 }
end
nums = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
puts "Numbers: #{nums}"
puts "Sum: #{nums.reduce(:+)}"
puts "Numbers greater than 10: #{greater_than_10(nums)}"
puts


puts "2"
# Shuffle the array and print the name of each person. 
# Also return an array with names longer than 5 characters.
def longer_than_5(names)
  return names.select { |name| name.length > 5 }
end
names = ["John", "KB", "Oliver", "Corey", "Matthew", "Christopher"]
puts "Names: #{names}"
puts "Shuffled: #{names.shuffle}"
puts "Names longer than 5 characters: #{longer_than_5(names)}"
puts


puts "3"
# Create array that contains all 26 letters in the alphabet
# Shuffle the array and display the last and first letter of the array
# If first letter in array is vowel, have it display a message
def shuffle(alphabet)
  puts "Shuffled: #{alphabet.shuffle!}"
  puts "Last Letter: #{alphabet.last}"
  print "First Letter: #{alphabet.first}"
  print " [VOWEL]" if ['a', 'e', 'i', 'o', 'u'].include? alphabet.first
  puts
end
alphabet = ('a'..'z').to_a
puts "Alphabet: #{alphabet}"
shuffle alphabet
puts


puts "4, 5"
# Generate an array with 10 random numbers between 55-100.
nums = []
10.times { nums << rand(55..100) }
puts "10 random numbers between 55-100: #{nums}"
# Sort and display above array (smallest at beginning)
# Display minimum and maximum values
puts "Sorted: #{nums.sort!}"
puts "Minimum: #{nums.min}"
puts "Maximum: #{nums.max}"
puts


puts "6"
# Create a random string that is 5 characters long
# Hint: (65 + rand(26)).chr returns a random character
def random_char
  return rand(65...91).chr
end
random = ""
5.times { random << random_char }
puts "Random 5 character long string: #{random}"
puts


puts "7"
# Generate an array with 10 random strings that are each 5 characters long
def random_string
  string = ""
  5.times { string << random_char }
  return string
end
strings = []
10.times { strings << random_string }
puts "10 random 5 character long strings: #{strings}"
puts