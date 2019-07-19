require 'rspec'
require 'pry'
require 'anagram_logic'

describe('AnagramSolver#anagram') do
  it('Returns "You got anagrams!" when object is "listen" and argument is "silent"') do
    phrase1 = Phrase.new("listen")
    phrase2 = Phrase.new("silent")
    expect(phrase1.anagram(phrase2)).to(eq("You got anagrams!"))
  end

  it('Returns "Nope, not anagrams!" when object is "cat" and argument is "not"') do
    phrase1 = Phrase.new("cat")
    phrase2 = Phrase.new("not")
    expect(phrase1.anagram(phrase2)).to(eq("Nope, not anagrams!"))
  end

  it('Returns "You got anagrams!." when object is "Listen" and argument is "Silent"') do
    phrase1 = Phrase.new("Listen")
    phrase2 = Phrase.new("Silent")
    expect(phrase1.anagram(phrase2)).to(eq("You got anagrams!"))
  end

  it('Returns "Please enter real words" when object is "brbrbr" and argument is "strp"') do
    phrase1 = Phrase.new("brbrbr")
    phrase2 = Phrase.new("strp")
    expect(phrase1.anagram(phrase2)).to(eq("Please enter real words"))
  end

  it('Returns "These are antigrams" when object is "Hello, sweetie" and argument is "bai bai"') do
    phrase1 = Phrase.new("Hello, sweetie")
    phrase2 = Phrase.new("bai bai")
    expect(phrase1.anagram(phrase2)).to(eq("These are antigrams"))
  end
end
