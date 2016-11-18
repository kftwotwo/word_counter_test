class String
  define_method(:word_counter) do
    self.split(" ")
  end
end
