# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
"zom".insert(2, "o")
# => “zoom”

"enhance".ljust(14, " ").rjust(20, " ")
"enhance".concat("    ").prepend("    ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
"the usual".ljust(18, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".rjust(18, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chop!
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..39)
"The mystery of the missing first letter".slice!(1..39)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
# => "Elementary, my dear Watson!"

"z".codepoints
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It's the ASCII character code for the letter z.

"How many times does the letter 'a' appear in this string?".count "a"
# => 4