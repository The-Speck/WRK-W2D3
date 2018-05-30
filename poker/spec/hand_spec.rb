require 'rspec'
require 'hand'

describe Hand do
  let(:cards) {
    double("Ace of Spades", suite: :spade, value: 1)
    double("King of Spades", suite: :spade, value: 1)
    double("Queen of Spades", suite: :spade, value: 1)
    double("Jack of Spades", suite: :spade, value: 1)
    double("10 of Spades", suite: :spade, value: 1)
  }
  
  describe "#initialize" do
    it "should accept a set of cards" do
      
    end
  end
end