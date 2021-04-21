require "nokogiri"
require "open-uri"
require_relative "christmas_methods"
require 'csv'

# 1. Welcome user
p "Welcome to chrismas list."
# 2. Display options menu (case or if else )
user_choice = ""
users_gift_list = { 
    "mathbook" => ["100", "[ ]"], # "danko"
    "iPhone" => ["1000", "[ ]"]
}

# users_gift_list = etsyScrapper("kwanza") this line calls the eatsyScrapper method and populates our Hash with Etsy gifts

# 3. Repeat untill user types "quit"
until user_choice == "quit" # while user_choice != "quit"   
    p "You can |list|add|delete|mark|quit|"
    user_choice = gets.chomp.downcase
    if user_choice == "list"
        # - list all gifts (each)
        users_gift_list.each do |gift, price|
            p "#{price[1]} #{gift} -- $#{price[0]}"
        end

    elsif user_choice == "add"
        # - ask for name of gift
        p "What gift do you want to add to you christmas list?"
        gift_name = gets.chomp
        gift_name = "#{gift_name}"
        # - ask for price of gift
        p "What is the price?"
        gift_price = gets.chomp
        # - add gift to user_gift_list hash
        users_gift_list[gift_name] = [gift_price, "[ ]"]
    
    elsif user_choice == "delete"
        # - ask for name of gift to delete
        p "What gift do you want to add to you christmas list?"
        gift_name = gets.chomp
        # - let user choose a gift to be deleted
        users_gift_list.delete(gift_name)
    elsif user_choice == "mark"
        # - ask for name of gift to mark
        p "What gift do you want to mark as bought?"
            # - let user choose a gift to be mark
        gift_name = gets.chomp

        users_gift_list[gift_name] = [users_gift_list[gift_name][0], "[X]"] 

    elsif user_choice == "quit"
        p "Thanks for using Christmas List."
    else
        p "Wrong input pls try again."
    end 
end 

storeInCSV(users_gift_list)


