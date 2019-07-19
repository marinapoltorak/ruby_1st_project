class AnagramSolver
  attr_reader(:text, :letter_frequencies, :is_valid, :letters_in_text)

  def initialize(text)
    @text = text.downcase
    @letter_frequencies = Hash.new { |hash, key| hash[key] = 0 }
    ('a'..'z').each { |letter| @letter_frequencies[letter] }
    @letters_in_text = []
    @text.split('').each do |letter|
      @letter_frequencies[letter] += 1
      if !@letters_in_text.include?(letter)
        @letters_in_text.push(letter)
      end
    end
    letters_in_text.sort!
    puts "@letters_in_text: #{@letters_in_text}"
    puts "vowels in text: #{@letters_in_text & ['a', 'e', 'i', 'o', 'u', 'y']}"
    @is_valid = @letters_in_text & ['a', 'e', 'i', 'o', 'u', 'y'] != []
  end

  def is_anagram(otherPhrase)
    if (!@is_valid) || (!otherPhrase.is_valid)
      return "Please enter real words"
    end

    if @letters_in_text & otherPhrase.letters_in_text == []
      return "These are antigrams."
    end

    @letter_frequencies.each do |letter, frequency|
      if frequency != otherPhrase.letter_frequencies[letter]
        return "Nope, not anagrams."
      end
    end

    "You got anagrams."
  end
end
