puts "Please input sentence: "
phrase = gets.chomp
puts "Please input shift: "
shift = gets.chomp.to_i



def caesar_cipher(phrase, shift = nil)
  cipher_array = phrase.chars.map do |char|
    if char.match?(/[[:alpha:]]/)
      if char.match?(/[[:upper:]]/)
        ciph_ord = 65 + (char.ord + shift - 65) % 26
        ciph_ord.chr
      elsif char.match?(/[[:lower:]]/)
        ciph_ord = 97 + (char.ord + shift - 97) % 26
        ciph_ord.chr 
        
      end
    else 
      char

    end
  end
  
  p cipher_array.join
end

caesar_cipher(phrase, shift)