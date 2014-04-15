require 'twilio_order'

describe TwilioOrder do
  let(:order) { TwilioOrder.new }

  it 'has no items' do
    expect(order).to be_empty
  end

  it 'can add items' do
    order.add(:line_item)

    expect(order).not_to be_empty
  end

  it 'calculates the total amount' do
    item = double :line_item, total_amount: 4.4
    order.add(item)

    expect(order.total_amount).to eq 4.4
  end

  it 'cannot place an order' do
    expect{order.place}.to raise_error "Please add items to your order before you place it."
  end

  it 'places an order' do
    time = (Time.new + (60*60)).strftime('%H:%M')
    message = "Thank you! Your order was successfully placed and will be delivered before #{time}."
    twilio_wrapper = double :twilio
    expect(twilio_wrapper).to receive(:send_sms).with(message).and_return(message)
    order = TwilioOrder.new twilio_wrapper
    order.add(:item)
    order.place
  end

end
