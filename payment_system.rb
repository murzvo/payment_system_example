require_relative 'stripe_method.rb'

class PaymentSystem
  def initialize(user)
    @user = user
    @payment_method = init_payment_method
  end

  def subscribe
    @payment_method.subscribe
  end

  def pay(amount)
    @payment_method.pay(amount)
  end

  private

  def init_payment_method
    case @user[:payment_system]
    when :stripe
      StripePayment.new(@user[:payment_system_id])
    else
      fail 'Unsupported user payment method'
    end
  end
end
