module Sell

 SALES_RULES = ['Fresh','No-Fresh'] 

 def sales (ordered_item, total_ordered)
 item = ordered_item
 total = total_ordered   
 return  item.to_s + " " + total.to_s 
 end


  def cost(products)
    cot = CheckOut.new(SALES_RULES)
    products.split(//).each { |p| cot.scan(p) }
    return cot.total
  end

  def set_up_sell (item)
   
   if item == "A"
    price = 50
    elsif
    item == "B"
    price = 30
    elsif
     item == "C"
    price = 20
    elsif
    item =="D"
    price =15
  end





  def do_sales
    cot = CheckOut.new(SALES_RULES)
    cot.scan("A");  set_up_sell( 50, self.sales("A",cot.total))
    cot.scan("B");  set_up_sell( 90, self.sales("B",cot.total))
    cot.scan("C");  set_up_sell( 140, self.sales("C",cot.total))
    cot.scan("D");  set_up_sell( 75, self.sales("D",cot.total))
   
  end



end
