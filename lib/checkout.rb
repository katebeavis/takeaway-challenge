require 'rubygems'
require 'twilio-ruby'

class Checkout
  def pay_money(order, money_paid)
    if !money_paid || money_paid != order.order_total
      fail 'You have entered an incorrect amount, please reenter'
    else
      send_message
    end
  end

  def delivery_time
    @hourahead = Time.new + 3600
  end

  def send_message
    delivery_time
    account_sid = 'ACb869fa6a0e0d8bcbca82368079985d07'
    auth_token = '8ca316bf9c0c14d31739896ba2825085'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
                                      :from => '+441412804334',
                                      :to => '+447935294331',
                                      :body => "Thanks for your order. Your food will be with you before #{delivery_time.strftime("%I:%M%p")}"
                                    })
  end
end
