require('rspec')
require('anagram')

describe('String#anagram') do
  it('returns the word if it is an anagram of the input word') do
    expect("cars".anagram(["scar"])).to eq(["scar"])
  end

  it('returns nothing if the arguement is not an anagram of the input word') do
    expect("cars".anagram(["rats"])).to eq([])
  end

  it('returns only words that are anagrams of the input word') do
    expect("cars".anagram(["scar", "arsc", "cats"])).to eq(["scar", "arsc"])
  end

  it('returns only words that are anagrams of the input word in any case') do
    expect("cARs".anagram(["scar", "arsc", "cats"])).to eq(["scar", "arsc"])
  end
end
