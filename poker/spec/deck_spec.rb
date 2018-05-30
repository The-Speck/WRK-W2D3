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
  
  describe "#shuffle" do
    it "should shuffle the deck" do
      deck1 = Array.new(52) do |idx| 
        [deck.cards[idx].suite, deck.cards[idx].value]
      end

      deck.shuffle!
      
      deck2 = Array.new(52) do |idx| 
        [deck.cards[idx].suite, deck.cards[idx].value]
      end
      
      expect(deck1).to_not eq(deck2)
    end
  end 
  
  describe "#draw" do 
    it "should accept a number argument of up to five" do 
      expect { deck.draw(5) }.to_not raise_error
      expect { deck.draw(6) }.to raise_error(ImproperCardsDrawn)
    end 
    
    it "should return cards in an array" do 
      expect(deck.draw(5).length).to eq(5)
      expect(deck.draw(5).sample).to be_a(Card)
    end 
    
    it "should remove cards from deck's array of cards" do
      deck.draw(5)
      expect(deck.cards.length).to eq(47)
    end
  end 
end