class TowersOfHanoi 
  attr_reader :board
  
  def initialize
    @board = Array.new(3) {[]}
    @board[0] = [3, 2, 1] 
  end 
  
  def move(pos)
    start, ending = pos
    board[ending] << board[start].pop
  end 
  
  def won?
    board[1..-1].any? {|peg| peg.length == 3}
  end
end  