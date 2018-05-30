require 'rspec'
require 'card'

describe Card do 
  subject(:card) {Card.new(:hearts, 10)}
  
  describe "#initialize" do
    it "sets a suite" do
      expect(card.suite).to eq(:hearts)
    end
    
    it "sets a value" do
      expect(card.value).to eq(10)
    end
  end
end 