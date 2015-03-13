require 'till'

describe Till do
  let(:till){Till.new}
  
  it "can parse json files into an array object" do
    expect(till.parsed_json.is_a?(Array)).to be true
  end

  it "can extract the shop name from parsed json" do
    expect(till.shop_name).to eq('The Coffee Connection')
  end

  it "can extract the shop's phone number from parsed json" do
    expect(till.shop_phone_number).to eq ("16503600708")
  end

  it "can extract the shop's address from parsed json" do
    expect(till.shop_address).to eq ('123 Lakeside Way')
  end

  it "can extract the pricelist into an array called menu" do
    expect(till.menu.is_a?(Array)).to be true
  end

  it "returns the price when we enter a dish" do
    expect(till.dish('Choc Mudcake')). to eq (6.4)
  end
end