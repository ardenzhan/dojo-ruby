# Assignment: Guess the Number
# Let's put our understanding of conditionals to the test. We're going to create a simple method with one input. Our method will be called guess_number and the input will be our guess. There will be three possible outcomes to this method. 

# The user guessed correctly, return "You got it!"
# The guess was too high, return "Guess was too high!"
# The guess was too low, return "Guess was too low!"
# If you want to challenge yourself, try using unless instead of if as much as you can.


def guess_number(guess)
  number = 25
  return "You got it!" unless guess != number
  return "Guess was too high!" unless guess < number
  return "Guess was too low!"
end 

puts guess_number(12)
puts guess_number(25)
puts guess_number(30)