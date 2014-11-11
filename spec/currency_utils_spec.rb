require 'spec_helper'

describe CurrencyUtils do
  it 'converts a USD formatted string into an integer' do
    expect(CurrencyUtils.currency_to_i('$2.25')).to eq 225
  end

  it 'converts an integer into a USD formatted string' do
    expect(CurrencyUtils.integer_to_currency(1445)).to eq '$14.45'
  end

  it 'converts an integer into a USD formatted string' do
    expect(CurrencyUtils.integer_to_currency(100)).to eq '$1.00'
  end

  it 'converts an integer into a USD formatted string' do
    expect(CurrencyUtils.integer_to_currency(25)).to eq '$0.25'
  end
end