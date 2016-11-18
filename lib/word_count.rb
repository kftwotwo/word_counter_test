class String
  define_method(:word_counter) do
    self.downcase.split(" ")
  end
end
