require_relative 'payment_method.rb'

class StripePayment < PaymentMethod
  def initialize(stripe_id)
    @stripe_id = stripe_id
    @user = stripe_user
  end

  def subscribe
    # stripe call to create subscription
    puts 'The subscription has been created(or not)'
  end

  private

  def stripe_user
    # stripe call to get stripe user object
  end
end
