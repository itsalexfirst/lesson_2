vowel = ['A', 'E', 'I', 'O', 'U', 'Y']
vowel_number = {}
letter_index = 1

('A'..'Z').each do |letter|
  vowel_number[letter] = letter_index if vowel.include? letter
  letter_index +=1
end

puts vowel_number
