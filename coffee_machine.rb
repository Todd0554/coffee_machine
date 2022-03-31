
CAmenu = {:latte => 3 , :mocha => 3.5, :cappuccino => 4} # The coffee menu can be changed in this style

class CoffeeMachine
    def initialize(menu, coffee_price = 0)
        @menu = menu
        @coffee_price = coffee_price
    end

    def order  # method of order a coffee
        p "This is our menu."
        @menu.each_key {|key| p "#{key}: $#{@menu[key]}"} # show the menu
        p "which one would you like?"
        coffee_order = gets.chomp.downcase.to_sym # get the order
        p "Large or small? Large just plus 2 dollar. L/S"
        size = gets.chomp.upcase # get the size
        size_fee = 0
        size_fee += 2 if size == "L" # add size fee if order L
        @coffee_price = @menu[coffee_order] + size_fee # total coffee price
        p "You order one #{coffee_order} in #{size} size. The total price is #{@coffee_price} dollar."
        
    end

    def change    # method of cashback
        p "Please insert the money in number."
        money_insert = gets.chomp.to_f
        if money_insert == @coffee_price # dont need cashback
            p "This is your coffee. Have a good day."
        elsif money_insert >@coffee_price 
            change = money_insert - @coffee_price #calculate the change
            p "This is your coffee and the changes are $#{change}. Thank you and have a good day."
        else   # money is not enough
            p "Sorry, the money is not enough."
        end
    end
end


# the main process
loop do
    p "Welcome to CA Coffee! Do you want a cup of coffee? y/n"  # say hi to customers 
    answer = gets.chomp.downcase
    if answer == "n" 
        p "Maybe next time~"
    elsif answer == "y"
        c = CoffeeMachine.new(CAmenu)
        c.order
        c.change
    end
end
