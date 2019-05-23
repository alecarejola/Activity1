#variables
name = ''
phoneNumber = 0
repeat = true
choice = 0
deposit = 0
withdraw = 0
balance = 0
#Welcome Page
puts "Welcome!"
puts "Please Register and fill the items below: "

print "Name: "
name = gets.chomp.to_s

print "Phone Number: "
phoneNumber = gets.chomp.to_i
puts "-------------------------------------------------------"

#Menu Page
while choice <= 3 && choice >= 0
  puts "Welcome " + name.to_s + "!"
  puts "Menu: "
  puts "1.) Deposit"
  puts "2.) Withdraw"
  puts "3.) Check"
  puts "4.) Exit"
  print "Please input the corresponding number of your choice: "
  choice = gets.chomp.to_i
  puts "-------------------------------------------------------"

  #Deposit Page
  if choice == 1
    puts "Welcome to Deposit Page!"
    print "Please enter your desired amount: "
    deposit = gets.chomp.to_f
    if deposit == 0 then
      puts "Desired amount should be greater than 0"
      puts "-------------------------------------------------------"
    else
      balance = deposit
      puts "Your balance is now: " + balance.to_s
      puts "-------------------------------------------------------"
  end
  #Withdraw Page
  elsif choice == 2 then
    puts "Welcome to Withdraw Page!"
    print "Please enter your desired amount to be withdrawn: "
    withdraw = gets.chomp.to_f
    print "\n"
    if balance == 0 then
      puts "Your balance is 0. Please deposit first."
      puts "-------------------------------------------------------"
    elsif withdraw > balance && balance > 0 then
      puts "Your desired amount is greater than your balance!"
      puts "-------------------------------------------------------"
    else 
      balance = balance - withdraw
      puts "You have successfully withdrawn " + withdraw.to_s + ". Your remaining balance is: " + balance.to_s
      puts "-------------------------------------------------------"
  end
  #Check Balance Page
  elsif choice == 3 then
    puts "Welcome to Balance Checking Page!"
    puts "Your balance is " + balance.to_s
    puts "-------------------------------------------------------"
  elsif choice == 4
    puts "Thank you for using the ATM Machine!"
    puts "-------------------------------------------------------"
  #Error of choice
  elsif choice >= 5 || choice <= 0
    puts "Invalid number! Please try 1-4."
    puts "-------------------------------------------------------"
    choice = 0
  end
end
