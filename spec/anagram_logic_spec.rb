require 'rspec'
require 'pry'
require 'anagram_logic'

describe("Words#is_anagram") do
  it('Returns "You got anagrams!" when object is "listen" and argument is "silent"') do
    words1 = Words.new("listen")
    words2 = Words.new("silent")
    expect(words1.is_anagram(words2)).to(eq("You got anagrams!"))
  end

  it('Returns "Nope, not anagrams!" when object is "cat" and argument is "not"') do
    words1 = Words.new("cat")
    words2 = Words.new("not")
    expect(words1.is_anagram(words2)).to(eq("Nope, not anagrams!"))
  end

  it('Returns "You got anagrams!." when object is "Listen" and argument is "Silent"') do
    words1 = Words.new("Listen")
    phrase2 = Words.new("Silent")
    expect(words1.is_anagram(words2)).to(eq("You got anagrams!"))
  end

  it('Returns "Please enter real words" when object is "brbrbr" and argument is "strp"') do
    words1 = Words.new("brbrbr")
    words2 = Words.new("strp")
    expect(words1.is_anagram(words2)).to(eq("Please enter real words"))
  end

  it('Returns "These are antigrams" when object is "Hello, sweetie" and argument is "bai bai"') do
    words1 = Words.new("Hello, sweetie")
    words2 = Words.new("bai bai")
    expect(words1.is_anagram(words2)).to(eq("These are antigrams"))
  end
end
