# Problem 3: Find the highest prime factor
require 'prime'

def largestPrimeFactor num
  largestPrime = 1
  primes = []
  x = 0

  Prime.each(num) do |prime|
    primes.push(prime)
  end

  # loop through primes[], check against num

  while x < primes.length
    if num % primes[x] == 0
      largestPrime = primes[x]
    end
    x += 1
  end

  puts largestPrime

end

largestPrimeFactor 13195



# Problem 1 : Find the sum of all the multiples of 3 or 5 below 1000.

# def findMultiples number
#   x = 0
#   sum = 0
#   while x < number do
#       if x % 5 == 0
#         sum += x
#       elsif x % 3 == 0
#         sum += x
#       else
#     end
#     x += 1
#   end
#   puts sum
# end
#
# findMultiples 1000


# Problem 2 : generate sum of even fibonacci sequence numbers

# def fibonacci num
#   a = b = 1
#   evenSum = 0
#   while a <= num do
#     temp = a + b
#     b = a
#     a = temp
#     # if the number is even, add to evenSum
#     if a % 2 == 0
#       evenSum += a
#     end
#   end
#
#   puts evenSum
# end
#
# fibonacci 4000000
