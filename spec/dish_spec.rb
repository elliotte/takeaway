require 'dish'

describe Dish do
  it 'has a name' do
    dish = Dish.new 'Buffalo Burger'

    expect(dish.name).to eq 'Buffalo Burger'
  end

  it 'has a price' do
    dish = Dish.new 'Soup', 2.34

    expect(dish.price).to eq 2.34
  end

end
