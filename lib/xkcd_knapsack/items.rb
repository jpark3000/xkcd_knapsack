module XKCDKnapsack
  class Items
    attr_reader :items

    def initialize(items)
      @items = items
    end

    def cheapest_price
      items.min_by(&:price).price
    end

    def sum
      items.inject(0) { |sum, item| sum + item.price }
    end

    def repeated_combinations(qty)
      items.repeated_combination(qty)
    end

    def to_output
      items_count.map do |k, v|
        "#{k.to_output} x#{v}"
      end
    end

    private

    def items_count
      items_count = Hash.new(0)
      items.each do |item|
        items_count[item] += 1
      end
      items_count
    end
  end
end