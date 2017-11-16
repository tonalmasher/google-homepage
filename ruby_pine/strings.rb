puts 'Hello there, and what\'s your first name?'
name = gets.chomp
puts 'And your middle name?'
middle = gets.chomp
puts 'How about your last name?'
last = gets.chomp
name_length = name.length + middle.length + last.length
puts "You're name is #{name_length} letters long."
# puts 'Pleased to meet you, ' + name + ' ' + middle + ' ' + last + '.'
# puts "What's your favorite number?"
# number = gets.chomp
# new = number.to_i + 1
# puts "I think " + new.to_s + " is a better one."
