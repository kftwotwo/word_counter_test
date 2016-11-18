# class String
#   define_method(:word_counter) do |sent|
#     result = []
#     input1 = self.downcase.split(" ")
#     input1.each() do |word|
#       sent.split(" ").each() do
#         if sent.downcase() == input1
#           reulst += 1
#         end
#       end
#       result
#     end
#   end
# end

# this breaks it
# new
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
