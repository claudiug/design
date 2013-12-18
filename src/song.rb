class Song

  def by(name)
    puts name
  end

  @demo = 'Claudiu'

  def demo
    @demo
  end

  def or(name)
    name.capitalize!
  end
end

s = Song.new
s.by 'name'
p s.or 'claudiu'

a =['a', 1, 3.2, String]
puts a

time = Time.now
puts time

if time.saturday?
  puts 'drink cola'
elsif time.monday?
   puts 'go to workd'
else
  puts 'n'
end