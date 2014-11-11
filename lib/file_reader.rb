require 'csv'

module XKCDKnapsack
  class FileReader
    include CurrencyUtils

    def initialize(file)
      @file = file
    end

    def target_price
      currency_to_i(CSV.read(file).first.first)
    end

    def items
      CSV.read(file)[1..-1].map { |a| XKCDKnapsack::Item.new(*a) }
    end

    private
    
    def file
      @file
    end
  end
end