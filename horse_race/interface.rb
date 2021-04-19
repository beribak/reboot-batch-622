# 1. Create horses (array)
horses = ["Rocky", "Balboa", "Philly", "Rockie 2"]
balance = 100
user_answer = "Y"

while balance >= 10 && user_answer != "N"
    # 2. Display horses
    p "Choose a horse!!!"
    p "===================================="

    horses.each_with_index do |horse, index|
        p "#{index + 1} -- #{horse}"
    end
    p "===================================="

    # 3. Ask user to pick a horse

    user_choice = gets.chomp.to_i - 1 

    # 4. Run race

    # p horses.sample

    random_num = rand(0...horses.length)

    # 5. Check if users horse won
    p "===================================="
    if random_num == user_choice
        # 6. Tell user if he won or lost
        p "You win!!!"
        balance += 50
    else
        p "You loose!!!"
        balance -= 10
    end

    p "===================================="
    p "Your balance is #{balance}."
    p "===================================="

    p "Do you want to play again? Y/N"
    user_answer = gets.chomp

end

p "**************************"
p "**************************"
p "HAVE A NICE DAY!!!"