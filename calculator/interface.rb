# 1. Ask for first number
user_answer = "Y"

while user_answer == "Y"  
    p "Please enter first number."
    first_num = gets.chomp.to_i
    p "====================================="
    # 2. Ask for second number
    p "Please enter second number."
    second_num = gets.chomp.to_i
    # 3. Ask for operation
    p "====================================="
    p "What operation do you want to execute. [+][-][x][/]"
    operator = gets.chomp
    # 4. Store information and identify operator
    # 5. Execute operation
    # 6. Return result
    if operator == "+"
        result = first_num + second_num
        puts "Your result is #{result}"
    elsif operator == "-"
        result = first_num - second_num
        puts "Your result is #{result}"
    elsif operator == "x"
        result = first_num * second_num
        puts "Your result is #{result}"
    elsif operator == "/"
        result = first_num / second_num
        puts "Your result is #{result}"
    end

    p "Do you want to run another calculation? Y/N"
    user_answer = gets.chomp.upcase
    
    if user_answer == "N"
        p "====================================="
        p "Thanks for using out calculator!!!"
    end
end