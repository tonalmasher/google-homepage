# answer = "what do you want?"
# puts answer.upcase
# reply = gets.chomp
# puts 'WHADDYA MEAN "' + reply.upcase + '"?!? YOU\'RE FIRED!!'

# lineWidth = 50
# puts "Table of Contents".center(lineWidth)
# puts " "
# puts "Chapter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
# puts "Chapter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
# puts "Chapter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)


# Leap Years
puts "Enter the first year: "
first = gets.chomp
puts "Enter the last year: "
last = gets.chomp
year = first.to_i
puts "These are the leap years in between #{first} and #{last}"
while year <= last.to_i do
  if year % 400 == 0
    puts year.to_s
  elsif year % 100 == 0
    puts year.to_s + " is surprisingly NOT a leap year (sorry)."
  elsif year % 4 == 0
    puts year.to_s
  end
  year += 1
end
