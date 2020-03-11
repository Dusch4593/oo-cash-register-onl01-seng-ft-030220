
require 'pry'
class CashRegister 
  attr_accessor :items, :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
 
  def add_item(item, price, quantity=1)
    quantity.times {
      @items << item
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
    @items
  end
end

