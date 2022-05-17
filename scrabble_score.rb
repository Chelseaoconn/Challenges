class Scrabble 
  VALUE = {['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1, ['D','G'] => 2, 
  ['B', 'C', 'M', 'P'] => 3, ['F', 'H', 'V', 'W', 'Y'] => 4, ['K'] => 5, ['J', 'X'] => 8,
  ['Q', 'Z'] => 10}

  def initialize(word)
    word ? @word = word.upcase.chars : @word = []
  end 
  
  def self.score(word)
    Scrabble.new(word).score
  end 

  def score 
    @word.each_with_object([]) do |letter, obj| 
      VALUE.each do |arr, val| 
        obj << val if arr.include? letter 
      end 
    end.sum
  end
end  

  





