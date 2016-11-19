class String
  define_method(:word_counter) do |sent|
    total = 0
    input = self.downcase()
    sent.split(" ").each() do |word|
      if word =~ /#{input}/i
        total += 1
      end
    end
    total
  end
end
