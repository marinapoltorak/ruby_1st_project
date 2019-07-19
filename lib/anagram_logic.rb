class Words
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

  def is_anagram(more_words)
    if (!@is_valid) || (!more_words.is_valid)
      return "Please enter real words"
    end

    descriptor = (@has_multiple_words || more_words.has_multiple_words) ? "phrases" : "words"

    if @letters_in_text & more_words.letters_in_text == []
      return "These #{descriptor}are antigrams."
    end

    @letter_frequencies.each do |letter, frequency|
      if frequency != more_words.letter_frequencies[letter]
        return "Nope, these #{descriptor} not anagrams."
      end
    end

    "You got #{descriptor} anagrams."
  end
end
