module XKCDKnapsack
  class Order
    attr_reader :target_price, :menu
    
    def initialize(target_price, menu)
      @target_price = target_price
      @menu = menu
    end

    def find_combinations
      orders = []
      order_qty_range.each do |qty|
        menu.repeated_combinations(qty).map do |combination|
          order = XKCDKnapsack::Items.new(combination)
          orders << order if order.sum == target_price
        end
      end
      orders
    end

    private

    def order_qty_range
      (1..max_order_qty)
    end

    def max_order_qty
      target_price / menu.cheapest_price
    end
  end
end