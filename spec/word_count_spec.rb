require('rspec')
require('word_count')

#it will recive a word from user like "cat" and the user will input a sentance like "the cat in the hat the cat was scared for life" and it will count how many times its in the sentance

describe('Sting#word_counter') do
  it "will return an array" do
    expect("".word_counter()).to be_an(Array)
  end
  it "will return 'h' in the array" do
    expect("h".word_counter()).to include(String)
  end
  it "will return 'h' in the array" do
    expect("h".word_counter()).to(eq(["h"]))
  end
  it "will split the the words in the array" do
    expect("hello cat".word_counter()).to(eq(["hello", "cat"]))
  end
  it "will not be case sensitve" do
    expect("HeLLo CaT".word_counter()).to(eq(["hello", "cat"]))
  end
end
