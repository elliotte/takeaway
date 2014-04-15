class LineItem
  def initialize dish, quantity
    @dish, @quantity = dish, quantity
  end

  def total_amount
    @dish.price * @quantity
  end
end
