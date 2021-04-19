# 1. Create and display a menu of items(hash)
store_items = {
    "kiwi" => [1.25, 3],
    "banana" => [0.5, 5],
    "asparagus" => [1, 1],
    "mango" => [0.33, 4]
}

cart = []
balance = 0  
user_input = ""  # this variable will be used for the user to input the item they want or to exit by typing quit
# 2. Make user pick an item or quit(loop)

while user_input != "quit" # if user types quit the loop wont be executed
    p "Please chose an item ur type quit to checkout."

    store_items.each do |item, price| ## displays the menu in a nice format
        p "#{item} -- #{price[0]}"
    end
    
    user_input = gets.chomp
    
    if user_input != "quit" # if user input is not quit run the code bellow
        p "How many?"
        quantity = gets.chomp.to_i
        
        ## the if else bellow increases the balance by the price of the item multiplied by the quantuty if the quantitiy is smaller then the availabillity 
        if quantity <= store_items[user_input][1] #store_items[user_input][1] accesses the second entry of the key value pairs in the hash which is the availabillity
            balance += quantity*store_items[user_input][0] #store_items[user_input][0] accesses the first entry of the key value pairs in the hash which is the price
            # 3. if user doesent quit store item he picked(array)
            # cart << user_input  this is the cart but be dont use it in out code
        else 
            p "That quantity is not available."
        end
    end
    

end

# p cart[0..-1]

p "Yout total balance is: #{balance}"
# 4. Calculate price for all items and display price