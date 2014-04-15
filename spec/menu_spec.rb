require 'menu'

describe Menu do
  it 'is empty' do
    expect(Menu.new).to be_empty
  end

  it 'is not empty with dishes' do
    menu = Menu.new [:dish]

    expect(menu).not_to be_empty
  end

  it 'lists dishes' do
    menu = Menu.new [:dish]
    expect(menu.list_dishes).to eq [:dish]
  end

end
