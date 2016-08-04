def secret_agent(swapped_name)
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

arrayed_name = swapped_name.chars
index = 0
while index < arrayed_name.length
  # change all vowels to next vowel
  if vowels.include?(arrayed_name[index])
    vowel_offset = vowels.index(arrayed_name[index])
    # edge case
    if arrayed_name[index] == 'u'
      arrayed_name[index] = 'a'
    else
      arrayed_name[index] = vowels[vowel_offset + 1]
    end
    index += 1
  # change all consonants to next consonant
  elsif consonants.include?(arrayed_name[index])
    consonant_offset = consonants.index(arrayed_name[index])
    #edge case
    if arrayed_name[index] == 'z'
      arrayed_name[index] = 'b'
    else
      arrayed_name[index] = consonants[consonant_offset + 1]
    end
    index += 1
  elsif arrayed_name[index] == " "
    index += 1
    next;
    
  end
  end
  # capitalize both words in string
  return arrayed_name.join('').split(' ').map(&:capitalize).join(' ')
end

puts "Give agent a fake name? (type 'quit' if not)"
  #set up array for agent names, real and secret
people = []

# loop whil input isn't 'quit'
while gets.chomp != "quit"

  puts "Input agent first name."
  first_name = gets.chomp

  puts "Input agent last name"
  last_name = gets.chomp
  
  full_name = first_name + " " + last_name
  
  swapped_name = last_name.downcase + " " + first_name.downcase

  secret_name = secret_agent(swapped_name)
  
  # use hash to store names
  puts secret_name
  people << { :name => full_name, :secret => secret_name }
  
  puts "Give another agent a fake name? (type 'quit' if not)"
  
end
  # print agent names
people.each do |person|
  puts "#{person[:secret]} is actually #{person[:name]}"
end