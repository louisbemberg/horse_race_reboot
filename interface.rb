# 1 - PRINT WELCOME
puts "Welcome User to the Horse Race!"
# 1B. GENERATE HORSES [ARRAY]
horses = ["Dory", "Hàrüuløes", "Tarzan", "Mulan"]

# 1C. PRINT THE HORSES NAMES
# Dirty way: puts "These are the horses: #{horses.join(" ")}"
# Clean way:
horses.each_with_index do |horse, index|
  puts "#{index + 1}: #{horse}"
end

# INITIALIZE BALANCE VARIABLE
balance = 100

# until balance <= 9 also works
# while balance >= 10 also works
until balance < 10 #LOOP STARTS HERE
  puts "Which horse would you like to bet on? Indicate a number"
  user_guess_number = gets.chomp.to_i
  user_guess = horses[user_guess_number - 1]
  # 3. Run the race
  # RANDOMLY PICK A HORSE WINNER

  # easy (and best) way
  winning_horse = horses.sample

  # advanced (and overly complicated) way
  # random_index = rand(0..horses.length - 1)
  # winning_horse = horses[random_index]

  # 4. Print results
  puts "The winning horse is #{winning_horse}"
  # IF THE USER IS RIGHT
  if user_guess.downcase == winning_horse.downcase
    # ADD +50 TO BALANCE
    balance += 50
    # print you win!
    puts "You win! Your new balance is #{balance}"
  # ELSE (the user was wrong)
  else
    # REMOVE 10 FROM BALANCE
    balance -= 10
    puts "You lose! Your new balance is #{balance}"
    # print your lost
  end

end
# LOOP ENDS HERE

puts "you don't have enough money to play."
