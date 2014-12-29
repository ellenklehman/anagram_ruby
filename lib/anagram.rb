class String
  define_method(:anagram) do |words_to_check|
    main_letters = self.downcase().split("").sort()
    list_of_anagrams = []
    words_to_check.each() do |word|
      letters_to_check = word.downcase().split("").sort()
      if main_letters.eql?(letters_to_check)
        list_of_anagrams.push(word)
      end
    end
    list_of_anagrams
  end
end
