require('rspec')
require('word_count')

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
  # it "will take an argument for the word" do
  #   expect("ha".word_counter(2)).to(eq(["h"]))
  # end
end
