require 'takeaway'

describe Takeaway do
  let(:takeaway) { Takeaway.new :menu }

  it 'lists the dishes' do
    menu = double :menu
    expect(menu).to receive(:list_dishes).and_return([])

    takeaway = Takeaway.new menu
    takeaway.list_dishes
  end

  it 'creates a new order' do
    expect(takeaway.order).to be_instance_of Order
  end

  it 'places an order' do
    order = double :order
    expect(order).to receive(:place)


    takeaway.place order
  end

end
