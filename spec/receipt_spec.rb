require 'receipt'
require 'spec_helper'

describe Receipt do
  let(:receipt){Receipt.new}
  let(:till){Till.new}
  let(:order){double :order, :customer_name => "Zeeshan", :customer_order_type => "Eat in"}

  context "Can access shop information from till system" do
    it "Shop name" do
      expect(receipt.shop_name_from(till)).to eq("The Coffee Connection")
    end

    it "Shop address" do
      expect(receipt.shop_address_from(till)).to eq("123 Lakeside Way")
    end

    it "Shop phone number" do
      expect(receipt.shop_phone_number_from(till)).to eq("16503600708")
    end
  end

  context "Can access customer's order information from order class" do
    it "Customer name" do
      expect(receipt.customer_name_from(order)).to eq("Zeeshan")
    end

    it "Customer order type" do
      expect(receipt.customer_order_type_from(order)).to eq("Eat in")
    end
  end
end
