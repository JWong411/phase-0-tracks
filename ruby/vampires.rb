puts "How many employees will be processed?"
numemployees = gets.chomp.to_i

i = 0
until i == numemployees

puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born? (age, yyyy)"
age = gets.chomp.to_i
yearofbirth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlicpreference = gets.chomp
if garlicpreference == "y"
  garlicpreference = true
else garlicpreference = false
end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
healthinsurance = gets.chomp
if healthinsurance == "y"
  healthinsurance = true
else healthinsurance = false
end

valid_input = false

until valid_input

  puts "Name any allergies you have. Type 'done' when finished."
  
  allergies = gets.chomp

if allergies == "sunshine"
  puts "Probably a vampire."
  valid_input = true
elsif allergies == "done" 
  valid_input = true
else 
  puts "Please continue."
end
end

if (name == "Drake Cula" || name == "Tu Fang")
  puts "Definitely a vampire."

elsif (2016 - yearofbirth == age) && (garlicpreference || healthinsurance) 
  puts "Probably not a vampire."

elsif (2016 - yearofbirth != age) && (!garlicpreference || !healthinsurance)
  puts "Probably a vampire."

elsif (2016 - yearofbirth != age) && (!garlicpreference && !healthinsurance)
  puts "Almost certainly a vampire."

else puts "Results inconclusive." 
end

  i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
