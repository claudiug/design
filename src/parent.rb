class Parent

  def hello
    puts self
  end
end

class Child < Parent

end

p = Parent.new
p.hello
c = Child.new
c.hello

class Person
  def initialize(name)
    @name = name
  end
end
module Trip
  PI = 3.14
  def Trip.demo
    puts self
  end
end
Trip.demo
p Trip::PI

module Debug
  def who_i_am
    "#{self.class} id: (#{self.object_id}: #{self.name})"
  end
end

class Photo
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

p = Photo.new('c')
puts p.who_i_am

puts 1.even?

o = Object.new
