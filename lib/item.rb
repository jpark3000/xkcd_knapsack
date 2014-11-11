class Item
  include CurrencyUtils
  attr_reader :name, :price
  
  def initialize(name, price)
    @name = name
    @price = currency_to_i(price)
  end

  def to_output
    "#{integer_to_currency(price)} #{name}"
  end
end