class Order

  def initialize
    @items = []
  end

  def add item
    @items << item 
  end

  def empty?
    @items.empty?
  end

  def total_amount
    @items.inject(0) {|memo, item| memo + item.total_amount }
  end

  def place
    raise "Please add items to your order before you place it." if empty?
    "Thank you! Your order was successfully placed and will be delivered before #{an_hour_from_now}."
  end

  def an_hour_from_now
    (Time.new + (60*60)).strftime('%H:%M')
  end

end
