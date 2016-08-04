# method that takes a block
def greeting 
  puts "Hello there!"
  yield("Rick")
end
puts "status before block"
greeting { |name| puts name.to_s }
puts "status after block"

# release 1
groceries = ["chips", "milk", "ham"]

asile = {
  1 => "snacks",
  2 => "dairy",
  3 => "meats"
}

  exciting_groceries = []
  p groceries
  p asile
  # array.each method
  groceries.each do |grocery|
    exciting_groceries << grocery.upcase
  end
  p exciting_groceries

  # array.map! method
  groceries.map! do |item|
    puts item
    item.upcase
  end
  p groceries

# hash.each method
  asile.each do |asile_number, category|
    p asile_number
    p category
  end

# release 2
# array iteration
array_iteration = [1, 2, 3, 4]

  # .delete_if
  array_iteration.delete_if { |a| a > 3}
  p array_iteration
  # .keep_if
  array_iteration.keep_if { |a| a > 2 }
  p array_iteration
  # .include?()
  array_iteration.include?(2)
  p array_iteration
  # .drop_while
  p array_iteration.drop_while{ |a| a < 3 }

# hash iteration
hash_iteration = {
  "a" => 200,
  "b" => 400,
  "c" => 288
}
  # delete_if
  p hash_iteration.delete_if { |key, number| number != 400 }
  # delete_if
  hash_iteration.delete_if { |letter, amount| amount > 210 }
  p hash_iteration 
  # has_key?()
  p hash_iteration.has_key?("a")
  # keep_if
  hash_iteration.keep_if {|letter, amount| amount < 300 }
  p hash_iteration