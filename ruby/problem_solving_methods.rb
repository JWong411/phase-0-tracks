def search_array(array, number)
  index = nil
  # index = nil is the default return
  array.each_index do |i|
    # '.each' Calls the given block once for each element in self, passing that element as a parameter.
    # '.each_index' does the same except returns the index instead of the value itself.
    if array[i] == number
      index = i
    end
  end

  return index
end

puts "What number are you looking for in the array?"
number = gets.chomp.to_i

arr = [42, 89, 23, 1]
p search_array(arr, number)


def fibonacci(terms)
  fib = [0, 1]
  # index = 2 because we're not starting at the beginning of the array
  index = 2
  
  while index < terms
    fib[index] = fib[index - 1] + fib[index - 2]
    index += 1
  end
  
  return fib
end

puts "How many Fibonacci terms would you like to generate?"
terms = gets.chomp.to_i

fib = fibonacci(terms)
p fib

# Release 2: Sort an Array
# Bubble Sort!

# Take an array of integers, and sort it

def bubble_sort(array)
  n = array.length
  # setting a variable equal to the array length
  loop do
  # i assume this sets up a loop. 
    swapped = false
    # swapped is a variable that is true if any swaps were made in the pass through the array
    (n - 1).times do |i|
      # length - 1: do the loop that many times
      if array[i] > array[i+1]
        # if the left array value is greater than the value to the right of it
        array[i], array[i+1] = array[i+1], array[i]
        # swap 'em
        swapped = true
        # termination condition of the loop
      end
    end

    break if not swapped
    # method ends when there are no more swaps to be made.
  end

  return array
end

arr = [5, 32, 4, 2, 98, 1, 25]

p bubble_sort(arr)