def prime?(num)
  #define method that takes an integer as an argument
  if num < 0 or num == 0 or num == 1
    return false
    #not prime number because they must be greater than 1 
  else
    (2..num-1).to_a.all? do |possible_factor|
      num % possible_factor != 0
      #to_a is a method that turns the range into an array
      # all? passes each element of the array and determines if true or not 
      # % gives you the remainder which should not equal 0 
    end
  end
end

puts prime?(432)
#prime number is a number greater than 1 that can only be divided by 1 and itself
#create a range of numbers that can be turned into an array to be iterated over 