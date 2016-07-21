# Establish a hash
client_info = {

}

# Prompt user for client information
puts "Please input client's name."
# Retrieve that information
name = gets.chomp
# Skip if user types 'none'
if name == "none" 
  name = nil
end
# Put information in hash
client_info[:name] = name


puts "Please input client's age."
# Convert information to proper type
age = gets.chomp.to_i
if age == "none" 
  age = nil
end
client_info[:age] = age


puts "Please input client's number of children."
childnum = gets.chomp.to_i
if childnum == "none" 
  childnum = nil
end
client_info[:childnum] = childnum


puts "Please input client's preferred style of decoration."
decor_style = gets.chomp
if decor_style == "none" 
  decor_style = nil
end
client_info[:decor_style] = decor_style


puts "Please input client's smoker status. (y/n)"
smokerstatus = gets.chomp
if smokerstatus == "y"
  smokerstatus = true
elsif smokerstatus == "n"
  smokerstatus = false
end
client_info[:smokerstatus] = smokerstatus

# Print client info hash
p client_info

# Prompt user for changes
puts "Is there something you'd like to change? (type 'none' if not)"
# Retrieve response
field = gets.chomp
# Account for 'none', otherwise take change and replace current hash value with it
if field != "none"
  puts "What value would you like it to be/have?"
  change = gets.chomp
  client_info[field.to_sym] = change
end

p client_info