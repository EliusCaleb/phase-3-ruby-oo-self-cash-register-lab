class CashRegister
    attr_accessor :discount, :total, :items, :last_item
   
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
        @last_item = 0
    end
    def total
        @total
    end

    def add_item(title, amount, quantity=1)
        self.last_item = amount * quantity
        self.total += self.last_item
        quantity.times { self.items << title}
            
    end

    def apply_discount
        if self.discount == 0
           return "There is no discount to apply."
        else 
            self.total -= self.total * self.discount / 100
            return "After the discount, the total comes to $#{self.total}."
            
        end
    end

    def void_last_transaction
        self.total -= self.last_item

    end
end