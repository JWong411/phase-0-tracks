  # Pretty method to print each item of the list and 
  #its corresponding quantity side by side and capitalize the item
def pretty(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}, qty: #{quantity}".capitalize
  end
end

# Method to create a list
def create_list(list)
  # create list as a hash
  grocery_list = {}
  # convert input string to an array
  arrayed_list = list.split(' ')
  # convert each array value into a hash with the item as a key and a default value of 1
    arrayed_list.each do |item|
    grocery_list[item] = 1  
  end
    return grocery_list
end

  #method to add an item to the list
def add_item(new_item, grocery_list)
  grocery_list[new_item] = 1
  #p grocery_list
end

# Calling method and storing it in the 'grocery_list' variable
grocery_list = create_list("carrots apples cereal pizza")

  #method to remove an item from the list
def remove_item(old_item, grocery_list)
  grocery_list.delete(old_item)
  #p grocery_list
end

  #method to update quantity of an item in the list
def update_quantity(item, new_number, grocery_list)
  grocery_list[item] = new_number
  #p grocery_list
end

#driver code
add_item("lemonade", grocery_list)
update_quantity("lemonade", 2, grocery_list)
add_item("tomatoes", grocery_list)
update_quantity("tomatoes", 3, grocery_list)
add_item("onions", grocery_list)
add_item("ice cream", grocery_list)
update_quantity("ice cream", 4, grocery_list)
remove_item("lemonade", grocery_list)
update_quantity("ice cream", 1, grocery_list)
p pretty(grocery_list)




# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: convert string into an array, then each it into a hash  
  # .each go into and set a hash with key for item and quantity for value
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash 

# Method to add an item to a list
# input: item name(key) and optional quantity(value) hash["key"] = "value"
# steps: hash["key"] = "value"
# output: updated hash

# Method to remove an item from the list
# input: list(hash), item(key), quantity(value)
# steps: hash.delete("key")
# output: updated hash

# Method to update the quantity of an item
# input: 3 parameter, list, item, quantity
# steps: hash["key"] = "value"
# output: updated hash

# Method to print a list and make it look pretty
# input: list, key
# steps: .each to print, capitalize, 
# output: updated list