require 'till'

class Receipt

  def shop_name_from(till)
    till.shop_name
  end

  def shop_address_from(till)
    till.shop_address
  end

  def shop_phone_number_from(till)
    till.shop_phone_number
  end

  def customer_name_from(order)
    order.customer_name
  end

  def customer_order_type_from(order)
    order.customer_order_type
  end
end