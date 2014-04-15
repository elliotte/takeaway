require_relative 'order'
require_relative 'dish'
require_relative 'line_item'
require_relative 'twilio_order'
require_relative 'menu'

class Takeaway
  def initialize menu, order_clazz=Order
    @menu = menu
    @order_clazz = order_clazz
  end

  def list_dishes
    @menu.list_dishes.map {|dish| "#{dish.name} - #{dish.price}" }.join("\n")
  end

  def order
    @order_clazz.new
  end

  def place order
    order.place
  end

end
