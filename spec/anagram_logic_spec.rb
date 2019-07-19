require 'rspec'
require 'pry'
require 'words'

describe("Words#is_anagram") do
  it('Returns "These are anagrams" when object is "listen" and argument is "silent"') do
    words1 = Words.new("listen")
    words2 = Words.new("silent")
    expect(words1.is_anagram(words2)).to(eq("These are anagrams"))
  end

  it('Returns "These are not anagrams" when object is "cat" and argument is "not"') do
    words1 = Words.new("cat")
    words2 = Words.new("not")
    expect(words1.is_anagram(words2)).to(eq("These are not anagrams"))
  end

  it('Returns "These are anagrams." when object is "Listen" and argument is "Silent"') do
    words1 = Words.new("Listen")
    words2 = Words.new("Silent")
    expect(words1.is_anagram(words2)).to(eq("These are anagrams"))
  end

  it('Returns "Please enter real words" when object is "brbrbr" and argument is "strp"') do
    words1 = Words.new("brbrbr")
    words2 = Words.new("strp")
    expect(words1.is_anagram(words2)).to(eq("Please enter real words"))
  end

  it('Returns "These words are antigrams" when object is "Hello" and argument is "baa"') do
    words1 = Words.new("Hello")
    words2 = Words.new("baa")
    expect(words1.is_anagram(words2)).to(eq("These are antigrams"))
  end
end
