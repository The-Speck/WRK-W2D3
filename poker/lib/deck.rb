require_relative "card.rb"
class ImproperCardsDrawn < ArgumentError; end

class Deck
  SUITES = [:hearts, :spade, :club, :diamond]
  VALUES = (1..13).to_a
  
  attr_reader :cards
  
  def initialize
    @cards = []
    populate
  end 
  
  def populate 
    SUITES.each do |suite|
      VALUES.each do |value|
        cards << Card.new(suite, value)
      end
    end
  end 
  
  def shuffle!
    10.times { cards.shuffle! }
  end
  
  def draw(num)
    raise ImproperCardsDrawn if (num > 5 || num < 0)
    
    drawed_cards = []
    num.times {drawed_cards << cards.pop}
    drawed_cards
  end
end