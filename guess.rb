puts 'Introduce the maximum number that you want me to think of'
maximum = gets
number = rand(0..maximum.to_i)
puts "I have thought a number between 0 and #{maximum}"
#puts "The number I have in mind is #{number}"
puts 'You have 5 tries to guess it'
tries = 0
while tries < 5
  try = gets.to_i
  if try == number then
    puts 'Congrats, you win the game :)'
    exit
  else
    puts 'You are looking for a higher number' if try < number
    puts 'You are looking for a lower number' if try > number
    tries = tries + 1
    puts "You have tried #{tries}/5 times"
  end
puts 'Try again'
end
puts 'You have exceeded the maximum number of tries :('
