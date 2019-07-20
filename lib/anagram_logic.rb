class Words
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @msg = ""
    @char = []


  def is_anagram()
    first_word_array = @word1.delete('^A-Za-z').downcase.split(//)
    second_word_array = @word2.delete('^A-Za-z').downcase.split(//)
    vowel_array = ["a", "i", "e", "o", "u"]
    msg1 = "Please enter real words"
    msg2 = "These phrases are anagrams"
    msg3 = "These phrases are antigrams"

    if (first_word_array.any? {|vowel|
      vowel_array.include?(vowel)}) & (second_word_array.any? {|vowel| vowel_array.include?(vowel)}) == false then return @msg = msg1 end
      first_word_array.each { |char|
        second_word_array.include?(char) ? @msg = msg2 :
        @msg = msg3 }
        @msg
      end
    end
  end
