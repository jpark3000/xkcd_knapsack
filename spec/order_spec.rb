require 'spec_helper'

describe XKCDKnapsack::Order do
  before do
    @reader = XKCDKnapsack::FileReader.new(File.join(File.dirname(__dir__), 'menu.txt'))
  end

  let(:order) { XKCDKnapsack::Order.new(@reader.target_price, XKCDKnapsack::Items.new(@reader.items)) }

  it 'returns an array of Items objects' do
    expect(order.find_combinations.map(&:class)).to eq Array.new(2, XKCDKnapsack::Items)
  end

  it 'returns the correct combination of items and prices' do
    expect(order.find_combinations.inject(0) { |sum, items| sum += items.sum })
      .to eq 1505 * 2
  end
end