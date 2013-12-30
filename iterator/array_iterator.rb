class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end

  def for_each_iterator(array)
    i = 0
    while i < array.length
      yield(array[i])
      i += 1
    end
  end
end

ar = %w(cele mai bune dulciuri se gasesc cand nu ai nici un ban)
i = ArrayIterator.new(ar)
while i.has_next?
  puts "(item: #{i.next_item})"
end
i.for_each_iterator(ar) {|r| puts "The element: #{r}"}