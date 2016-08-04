# Define the encrypt method
# Set the message as a variable
# Use .next and a loop to encrypt the message


def encrypt(secret_message)
  index = 0
  while index < secret_message.length
    if secret_message[index] == " "
      # do nothing
    elsif secret_message[index] == "z"
      secret_message[index] = "a"
    else
      secret_message[index] = secret_message[index].next!
    end

    index += 1
  end

  secret_message
end
  
# Define the decrypt method
# Set the decoder alphabet as a variable
# Use a loop to decrypt the message

def decrypt(encoded_message)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  index = 0
  while index < encoded_message.length
    if encoded_message[index] != " "
      offset = alphabet.index(encoded_message[index])
      encoded_message[index] = alphabet[offset - 1]
    end
    index += 1
  end

  encoded_message
end

#Ask the user if they want to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
use = gets.chomp

#Ask the user what the password is
puts "What is the password?"
password = gets.chomp

#Conduct the operation and print the results
if use == "decrypt"
  puts decrypt(password)
elsif use == "encrypt"
  puts encrypt(password)
else
  puts "You must choose encrypt or decrypt."
end

# puts encrypt("a bc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("swordfish"))
# This works because they cancel each other out.

