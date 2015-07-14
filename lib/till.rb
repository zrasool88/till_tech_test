require 'json'

class Till

  attr_reader :order, :shop_menu

  def initialize
    @order = []
    @shop_menu = nil
    self.parse_json
  end

  def parse_json
    file = File.read('./hipstercoffee.json')
    @shop_menu = JSON.parse(file)
  end

  def shop_name
    @shop_menu[0]['shopName']
  end

  def shop_phone_number
    @shop_menu[0]['phone']
  end

  def shop_address
    @shop_menu[0]['address']
  end

  def menu
    @shop_menu[0]['prices']
  end

  def dish(dishName)
    @shop_menu[0]['prices'][0][dishName]
  end

  def add(item, quantity)
    price = self.dish(item)
    line_item = [{ item => price }, quantity]
    @order << line_item
  end

  def line_total(item, line_number)
    index = line_number - 1
    @order[index][0][item] * @order[index][1]
  end

end
