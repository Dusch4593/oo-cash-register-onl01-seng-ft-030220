
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
    quantity.times {
      self.class.items << item
    }
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
    self.class.items
  end
end

new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)
binding.pry
