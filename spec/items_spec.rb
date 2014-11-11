require 'spec_helper'

describe Items do
  before do
    @soup = Item.new('soup', '$4.25')
    @bread = Item.new('bread', '$1.15')
    @soda = Item.new('soda', '$2.50')
  end
  let(:menu) { Items.new([@soup, @soup, @soup, @bread, @soda, @soda]) }

  it 'calculates the sum' do
    expect(menu.sum).to eq 1890
  end

  it 'finds the cheapest price' do
    expect(menu.cheapest_price).to eq 115
  end

  it 'formats the correct string for output' do
    expect(menu.to_output).to eq ['3 soup $4.25', '1 bread $1.15', '2 soda $2.50']
  end
end