class PaymentMethod
  def subscribe
    # method to create subscription
    raise 'This payment method is not supporting method "subscribe"'
  end

  def pay(amount)
    # method to create one-time payment
    raise 'This payment method is not supporting method "pay(amount)"'
  end
end
