require_relative 'payment_system.rb'

class User

  USER = {
    name: 'Vasya',
    payment_system: :stripe,
    payment_system_id: '34jhjkqhlk'
  }

  def subscribe
    payment_system = PaymentSystem.new(USER)
    payment_system.subscribe
  end

  def pay(amount)
    payment_system = PaymentSystem.new(USER)
    payment_system.pay(amount)
  end
end
