require 'rspec'
require 'tdd'

describe Array do 
  describe "#my_uniq" do 
    let(:array) { [1, 2, 3, 3, 2, 6, 1] }
      
    it "removes duplicate from array" do 
      expect(array.my_uniq).to eq(array.uniq)
    end 
    
    it "works for an empty array" do 
      expect([].my_uniq).to eq([].uniq)
    end 
    
    it "does not call uniq method" do
      expect(array).not_to receive(:uniq)
      array.my_uniq
    end
  end
  
  describe "#two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] }
    
    it "finds index of numbers that sum to zero" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end
    
    it "doesn't break for empty arrays" do
      expect([].two_sum).to eq([])
    end
  end
end

describe "#my_transpose" do
    let(:rows) {
   [[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]]
    }
    
    let(:cols) {
   [[0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]]
    }
    
    it "should transpose the matrix" do
      expect(my_transpose(rows)).to eq(cols)
    end
    
    it "does not call the transpose method" do
      expect(rows).not_to receive(:transpose)
      my_transpose(rows)
    end
end

describe "#stock_picker" do 
  let(:stocks) { [27, 32, 22, 25, 45, 60, 20]}
  let(:stocks2) { [70, 27, 32, 22, 25, 45, 60, 20]}
  
  it "finds the best indices" do
    expect(stock_picker(stocks)).to eq([2, 5])
  end
  
  it "doesn't sell before it buys" do
    expect(stock_picker(stocks2)).to eq([3, 6])
  end
  
  it "returns nil if the array length is less than two" do
    expect(stock_picker([12345])).to be_nil
  end
end

