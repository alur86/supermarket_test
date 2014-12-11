class Order< ActiveRecord::Base

validates :price, numericality: { greater_than: 0.65 }
presence : true

has_many: Order_Logs
has_many: Event

 attr_accessor :order_action

def initialize
    :order_action = false
  end


def well_price (order)

 if (1..2).include?(order)
   #puts  "price =1$  cut = 0 totally 1- 2 items"
  return 1.to_f
 
 elsif (3..5).include?(order)
   #puts "price = 2$ with cut 1$  totally from 3 - 5 items"
   return 2.to_f
 
  elsif (6..8).include?(order)
   puts "price = 4$ cut 2$ totallly from 6-8 items"
   return 4.to_f 
 
 end


def make_order (order, price)
date= Time.now
evented_val = Event.evented (date) 
if evented_val == true
Order.well_price(order) 
elsif
order = new Order 
Order_Logs.create(order, price,date)
order_action = true
#puts "the order done well!""
else
Order_Logs.create(order, price,date)
order_action = false
#puts "the bad order, ahh!"
end

end


def  order_log (order, price, date)
date = Time.now
order_logs = Order_Logs.create(order, price,date)
end



end
