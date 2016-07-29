def calculate(integer, operator, number)

  if operator == "+"
    result = integer + number
  elsif operator == "-"
    result = integer - number
  elsif operator == "*"
    result = integer * number
  elsif operator == "/"
    result = integer / number
  end
  return result
end

#p calculate(2, "+", 3)
#p calculate(2, "-", 3)
#p calculate(2, "*", 3)
#p calculate(3, "/", 3)
puts "Input a problem you'd like to calculate? Type 'done' when finished."

calculations = []

while gets.chomp != "done"
  puts "Input problem, i.e. (4 + 5)."
  problem = gets.chomp
  parts = problem.split(' ')
    if parts[0].to_i.to_s == parts[0]
    # do nothing
    else
      abort("Invalid input.")
end
    if parts[1] == "+" || parts[1] == "-" || parts[1] == "*" || parts[1] == "/"
    # do nothing
  else
      abort("Invalid input.")
    end
    if parts[2].to_i.to_s == parts[2]
      # do nothing
    else
      abort("Invalid input.")
    end


  results = calculate(parts[0].to_i, parts[1], parts[2].to_i)
  p results
  
    calculations << { :function => problem, :answer => results }

  puts "Input another problem? Type 'done' when finished."
end

puts "#{calculations.length} calculations made."
calculations.each do |fxn|
  puts "#{fxn[:function]} = #{fxn[:answer]}"
end