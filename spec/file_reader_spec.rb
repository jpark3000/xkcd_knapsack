require 'spec_helper'

describe FileReader do
  let(:reader) { FileReader.new(File.join(File.dirname(__dir__), 'menu.txt')) }

  it 'returns the target price' do
    expect(reader.target_price).to eq 1505
  end

  it 'returns an array of item objects' do
    expect(reader.items.map(&:class)).to eq Array.new(6, Item)
  end
end