vowel = ['A', 'E', 'I', 'O', 'U', 'Y']
vowel_number = {}

('A'..'Z').each.with_index do |letter, letter_index|
  vowel_number[letter] = letter_index + 1 if vowel.include? letter
  letter_index +=1
end

puts vowel_number
