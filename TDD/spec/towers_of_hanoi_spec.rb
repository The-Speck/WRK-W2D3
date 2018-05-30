require 'rspec'
require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }
  let(:moves) {
    [[0,1], #2,1,0
    [0,2],  #1,1,1
    [1,2],  #1,0,2
    [0,1],  #0,1,2
    [2,0],  #1,1,1
    [2,1],  #1,2,0
    [0,1]]   #0,3,0
  }
  
  describe "#initialize" do
    it "makes an array board of three arrays" do
      expect(game.board.length).to eq(3)
      3.times do |idx| 
        expect(game.board[idx]).to be_an(Array)
      end
    end
    
    it "makes three disks in the first array" do
      expect(game.board[0]).to eq([3, 2, 1])
    end
  end
  
  describe "#move" do 
    
    it "should move a disc from one index to another" do 
      game.move(moves[0])
      expect(game.board[0].length).to eq(2)
      expect(game.board[1].length).to eq(1)
    end
  end 
  
  describe "#won?" do 
    it "should return false unless game is won" do
      moves[0...3].each do |move|
        game.move(move)
        expect(game.won?).to be_falsey
      end
    end
    
    it "should return true if game is over" do
      moves.each do |move|
        game.move(move)
      end
      
      expect(game.won?).to be_truthy
    end
  end
end