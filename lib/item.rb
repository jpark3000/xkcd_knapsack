class Item
  attr_reader :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_output
    "#{name} #{price}"
  end
end