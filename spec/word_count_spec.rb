require('rspec')
require('word_count')

#it will recive a word from user like "cat" and the user will input a sentance like "the cat in the hat the cat was scared for life" and it will count how many times its in the sentance

describe('Sting#word_counter') do
  it "will return a integer" do
    expect("".word_counter("")).to be_an(Integer)
  end
  it "will return 'hello' as 0" do
    expect("hello".word_counter("")).to(eq(0))
  end
  it "will recive 'cat' and agrument of 'cat is cat' and return 2" do
    expect("cat".word_counter("cat is cat")).to(eq(2))
  end
  it "will recieve 'hello cat' and not accept them and return as 0" do
    expect("hello cat".word_counter("hello cat")).to(eq(0))
  end
  it "will recieve 'HeLLo' and will not be case sensitve" do
    expect("HeLLo".word_counter("hEllO cAt")).to(eq(1))
  end
  it "will ingore others words except the word you inputted to find and add 1 everytime it finds the word in the argument" do
    expect("hello".word_counter("this is hello")).to(eq(1))
  end
end
