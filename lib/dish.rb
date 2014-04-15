class Dish
  attr_reader :name, :price

  def initialize name, price=0.0
    @name, @price = name, price
  end
end
