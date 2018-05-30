require 'byebug'

class Array
  def my_uniq
    arr = []
    self.each do |el|
      arr << el unless arr.include?(el)
    end
    arr
  end
  
  def two_sum
    new_arr = []
    
    (0...self.length-1).each do |idx1|
      (idx1+1...self.length).each do |idx2|
        new_arr << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    
    new_arr
  end
end

def my_transpose(matrix)
  new_matrix = Array.new(matrix.length) {[]}
  matrix.each do |rows|
    rows.each_with_index do |col, idx2|
      new_matrix[idx2] << col
    end 
  end 
  new_matrix
end 

def stock_picker(stocks)
  holder_arr = nil
  max = 0

  (0...stocks.length-1).each do |idx1|
    (idx1+1...stocks.length).each do |idx2|
      if stocks[idx2] - stocks[idx1] > max
        holder_arr = [idx1, idx2]
        max = stocks[idx2] - stocks[idx1]
      end
    end
  end
  
  holder_arr
end