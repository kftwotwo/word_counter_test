require('rspec')
require('word_count')

#it will recive a word from user like "cat" and the user will input a sentance like "the cat in the hat the cat was scared for life" and it will count how many times its in the sentance

describe('Sting#word_counter') do
  it "will return an array" do
    expect("".word_counter("")).to be_an(Array)
  end
  it "will return 'h' in the array" do
    expect("h".word_counter("h")).to include(String)
  end
  it "will return 'h' in the array" do
    expect("h".word_counter("h")).to(eq(["h"]))
  end
  it "will split the the words in the array" do
    expect("hello cat".word_counter("hello cat")).to(eq(["hello", "cat"]))
  end
  it "will not be case sensitve" do
    expect("HeLLo".word_counter("HeLLo Cat")).to(eq(["hello"]))
  end
  it "will add 1 ev everytime it finds the word" do
    expect("hello".word_counter("this is hello")).to(eq(1))
  end
end
