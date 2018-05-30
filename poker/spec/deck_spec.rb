require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) {Deck.new}
  
  describe "#initialize" do
    it "should generate an array of 52 cards" do 
      expect(deck.cards).to be_an(Array)
      expect(deck.cards.length).to be(52)
      expect(deck.cards.sample).to be_a(Card)
    end
  end
end