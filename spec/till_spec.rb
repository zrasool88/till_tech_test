require 'till'
require 'spec_helper'

describe Till do
  let(:till) { described_class.new }

  it 'can extract the shop name from parsed json' do
    expect(till.shop_name).to eq('The Coffee Connection')
  end

  it 'can extract the shop phone number from parsed json' do
    expect(till.shop_phone_number).to eq('16503600708')
  end

  it 'can extract the shop address from parsed json' do
    expect(till.shop_address).to eq('123 Lakeside Way')
  end

  it 'can extract the pricelist into an array called menu' do
    expect(till.menu.is_a?(Array)).to be true
  end

  it 'returns the price when we enter a dish' do
    expect(till.dish('Choc Mudcake')). to eq(6.4)
  end

  it 'has an order' do
    expect(till.order.is_a?(Array)).to be true
  end

  it 'can add items to order' do
    expect { till.add('Cafe Latte', 1) }.to change { till.order.length }.by(1)
  end

  it 'can give line total of an order' do
    till.add('Cafe Latte', 2)
    expect(till.line_total('Cafe Latte', 1)).to eq(9.50)
  end

end
