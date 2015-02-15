require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby'

class Checkout

def initialize
      @menu = {

      "Lucky Charms" => 2,
      "Frosties" => 1,
      "Coco Pops" => 3

    }
    @order = []
end

def welcome
  puts "Welcome to the Cereal Cafe Please press 1 to see the menu or 2 to exit"
  reply = gets.chomp
  if reply == "1" then display_menu
  elsif
    puts "Goodbye"
  end
end

def display_menu
  @menu.each do |food, price| print "#{food}: £#{price} \n" end
  place_order
end

def place_order
  puts "Please type in the dish that you want"
  dish = gets.chomp
  @order << dish
end



 def delivery_time
  hourahead = Time.new + 3600
 end
 
  # def send_message
  #   hourahead = Time.new + 3600
  #   account_sid = 'ACb869fa6a0e0d8bcbca82368079985d07' 
  #   auth_token = '8ca316bf9c0c14d31739896ba2825085' 
     
  #   # set up a client to talk to the Twilio REST API 
  #   @client = Twilio::REST::Client.new account_sid, auth_token 
     
  #   @client.account.messages.create({
  #     :from => '+441412804334', 
  #     :to => '+447935294331', 
  #     :body => "Thanks for your order. Your cereal will be with you before #{hourahead.strftime("%I:%M%p")}"  
  #   })
  # end

end