# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  split_sentence = sentence.split
  longest_word = nil
  most_characters_currently = 0
  
  split_sentence.each do |word|
    number_of_characters = word.length
    if number_of_characters > most_characters_currently
      longest_word = word
      most_characters_currently = number_of_characters
    end
  end
  
  p longest_word
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end