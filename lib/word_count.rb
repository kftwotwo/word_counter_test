class String
  define_method(:word_counter) do |sent|
    total = 0
    input = self.downcase().split("")
    sent.split(" ").each() do |word|
      if word.downcase().split("") == input
        total += 1
      end
    end
    total
  end
end
