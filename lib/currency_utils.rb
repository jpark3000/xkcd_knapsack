module CurrencyUtils
  module_function

  def currency_to_i(currency)
    currency.gsub(/[^\d]/, '').to_i
  end

  def integer_to_currency(integer)
    '$%.2f' % (integer * 0.01)
  end
end