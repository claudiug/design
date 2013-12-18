class BookInStock
  attr_reader :price
  attr_accessor :book
  def initialize(book, price)
    @book = book
    @price = Float(price)
  end

  def to_s
    "Book: #{@book} - Price: #{@price}"
  end

  def price_in_cents
    Integer(price*100+0.5)
  end

  def price_in_cents=(price)
    @price = price / 100.0
  end

  #def book
  #  @book
  #end
  #
  #def price
  #  @price
  #end

  def price=(price)
    @price = price
  end
end

book = BookInStock.new('12', 3)

puts book.price
puts book.book
book.price = 34
puts book.price
book.book = '33'
puts book.book
puts book.price_in_cents
puts book.price_in_cents = 459
puts book.price