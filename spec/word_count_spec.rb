require('rspec')
require('word_count')

#it will recive a word from user like "cat" and the user will input a sentance like "the cat in the hat the cat was scared for life" and it will count how many times its in the sentance

describe('Sting#word_counter') do
  it "will return an array" do
    expect("".word_counter(1)).to be_an(Array)
  end
  it "will return 'h' in the array" do
    expect("h".word_counter(1)).to include(String)
  end
  it "will return 'h' in the array" do
    expect("h".word_counter(1)).to(eq(["h"]))
  end
  it "will split the the words in the array" do
    expect("hello cat".word_counter(2)).to(eq(["hello", "cat"]))
  end
  it "will not be case sensitve" do
    expect("HeLLo CaT".word_counter(2)).to(eq(["hello", "cat"]))
  end
  it "will see if the word and the sentence are =" do
    expect("world".word_counter("the world is ditry")).to(eq(["world"]))
  end
end
