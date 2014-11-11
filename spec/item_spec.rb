require 'spec_helper'

describe Item do
  let(:item) { Item.new('soup', '$4.25') }

  it 'returns a correctly formatted string' do
    expect(item.to_output).to eq '$4.25 soup'
  end
end

