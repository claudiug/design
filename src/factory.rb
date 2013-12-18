class Duck

  def initialize(name)
    @name = name
  end

  def eat
    puts "(Duck #{@name} is eating)"
  end

  def speak
    puts "(Duck #{@name} says Quack!)"
  end

  def sleep
    puts "Duck #{@name} os going to take a nap"
  end
end
class Pond
  def initialize(number_ducks)
    @ducks = []
    number_ducks.times do |i|
      duck = Duck.new("Duck#{i}")
      @ducks << duck
    end
  end
  def simulate_one_day
    @ducks.each {|duck| duck.speak}
    @ducks.each {|duck| duck.eat}
    @ducks.each {|duck| duck.sleep}
  end
end

class Frog
  def initialize(name)
    @name = name
  end
  def eat
    puts("Frog #{@name} is eating.")
  end
  def speak
    puts("Frog #{@name} says Crooooaaaak!")
  end
  def sleep
    puts("Frog #{@name} doesn't sleep; he croaks all night!")
  end
end
pond = Pond.new(3)
pond.simulate_one_day