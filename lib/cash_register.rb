
require 'pry'
class CashRegister 
  attr_accessor :item, :total, :discount
  @@items = []
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def self.items 
    @@items
  end
 
  def add_item(item, price, quantity=1)
    quantity.
    self.total += price * quantity
  end
  
  def apply_discount 
    if self.discount > 0
      discount_decimal = self.discount * 0.01
      deduction = self.total * discount_decimal
      self.total -= deduction.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    
  end
end

test = CashRegister.new 
test.add_item("macbook pro", 1000)
test.apply_discount