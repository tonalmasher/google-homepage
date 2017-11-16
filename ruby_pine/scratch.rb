# birthTime = Time.mktime(1976, 9, 14, 10, 42)
# billionTime = birthTime + 1000000000
#
# puts birthTime
# puts billionTime

# puts "What year where you born?"
# year = gets.chomp
# puts "What month? (numerical)"
# month = gets.chomp
# puts "What day?"
# day = gets.chomp
# birthTime = Time.mktime(year.to_i, month.to_i, day.to_i)
# today = Time.now
# seconds = today - birthTime
# age = seconds.to_i / 31557600
# puts "You're #{age} years old!"
# puts "So here are your spanks: "
# age.times do
#   spanks = []
#   spanks.push "Spank! "
#   puts spanks
# end

# class Die
#
#   def initialize
#     roll
#   end
#
#   def roll
#     @numberShowing = 1 + rand(6)
#   end
#
#   def showing
#     @numberShowing
#   end
#
#   def cheat side
#     if side > 6 or side < 0
#       roll
#     else
#       @numberShowing = side
#     end
#   end
#
# end
#
# # puts Die.new.showing
# puts Die.new.cheat(3)

def grandfatherClock blockName, &block
  # puts blockName
  block.call

end

grandfatherClock 'chime the hour' do 
  hours = Time.now.hour
  if hours > 12
    hours = hours - 12
  end
  puts "It's #{hours} o'clock."
  hours.times do
    puts "Dong"
  end
end
