class Event < ActiveRecord::Base

belongs_to: Order

SALES_DATE = [Time.now +5,Time.now + 10 , Time.now + 15] 


def evented (date)
 
date = Time.new
cur_date = Time.new
if cur_date >= date 
return true
else
return false
end


end
