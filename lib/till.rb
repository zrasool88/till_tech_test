require 'json'

class Till

  attr_reader :shop_name, :shop_address, :shop_phone_number, :menu

  def initialize
  end

  def parsed_json
    file = File.read('./hipstercoffee.json')
    data_hash = JSON.parse(file)
  end

  def shop_name
    parsed_json[0]['shopName']
  end

  def shop_phone_number
    parsed_json[0]['phone']
  end

  def shop_address
    parsed_json[0]['address']
  end

  def menu
    parsed_json[0]['prices']
  end

  def dish(dishName)
    parsed_json[0]['prices'][0][dishName]
  end

end
