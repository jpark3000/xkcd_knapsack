require 'spec_helper'

describe XKCDKnapsack::Items do
  before do
    @soup = XKCDKnapsack::Item.new('soup', '$4.25')
    @bread = XKCDKnapsack::Item.new('bread', '$1.15')
    @soda = XKCDKnapsack::Item.new('soda', '$2.50')
  end
  let(:menu) { XKCDKnapsack::Items.new([@soup, @soup, @soup, @bread, @soda, @soda]) }

  it 'calculates the sum' do
    expect(menu.sum).to eq 1890
  end

  it 'finds the cheapest price' do
    expect(menu.cheapest_price).to eq 115
  end

  it 'formats the correct string for output' do
    expect(menu.to_output).to eq ['$4.25 soup x3', '$1.15 bread x1', '$2.50 soda x2']
  end
end