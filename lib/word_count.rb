class String
  define_method(:word_counter) do |sent|
    self.downcase.split(" ").each() do |word|
      if word == sent
      end
    end
  end
end
