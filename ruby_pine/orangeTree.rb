# https://pine.fm/LearnToProgram/chap_09.html
#
# Make an OrangeTree class. It should have a  height method which returns its height, and a  oneYearPasses method, which, when called, ages the tree one year

# every year after age 3 it produces 10 more fruits than the previous year, until age 10
# it dies after 20 years
# it grows to 30 feet tall in 10 years

class OrangeTree

  def initialize age
    @age = age
    puts "You have a #{@age} year old Orange Tree!"
    height
    producesFruit
  end


  def harvest
      puts "You took an orange from the tree."
      @oranges -= 1
      puts "there are now #{@oranges} oranges left on the tree."
  end

  def oneYearPasses
    puts ""
    @oranges = 0
    @age += 1
    if @age >= 20
      puts "This tree has entered it's twentieth year."
      puts "It has lived a long life and has produced many fruit."
      puts "However all good things must come to and end, and so has this tree."
      exit
    else
      puts "The tree is now #{@age} years old."
      height
      producesFruit
    end
  end

private


  def height
    if @age >= 10
      @height = 30
      puts "The tree is a full #{@height} feet tall."
    else
      @height = @age * 3
      puts "The tree is #{@height} feet tall, and still growing."
    end
  end

  def producesFruit
    if @age > 3
      @oranges = @age * 10
      puts "It has #{@oranges} oranges on it's branches!"
    else
      @producesFruit = false
    end
  end

end

tree = OrangeTree.new 19
tree.harvest
tree.oneYearPasses
