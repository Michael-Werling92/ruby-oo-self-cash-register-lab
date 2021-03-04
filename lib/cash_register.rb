class CashRegister
    attr_accessor :total, :discount, :items, :price, :last_transaction

    def initialize(discount=0)
        @total= 0
        @discount= discount 
        @items =[]
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @last_transaction = price * quantity
        @total += price * quantity
        if quantity > 1
            counter = 0
            while counter < quantity
                @items << title
                counter += 1
            end
        else
            @items << title
        end
    end

    def apply_discount
        if @discount > 0
            @off = (@price * @discount)/100
            @total -= @off
            return "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
    
end
