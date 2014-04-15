require_relative 'twilio_wrapper'

class TwilioOrder
  def initialize twilio_wrapper=TwilioWrapper.new
    @order = Order.new
    @twilio = twilio_wrapper
  end

  def empty?
    @order.empty?
  end

  def add item
    @order.add item
  end

  def total_amount
    @order.total_amount
  end

  def place
    @twilio.send_sms(@order.place)
  end
end
