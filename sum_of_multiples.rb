class SumOfMultiples 
  def initialize(*x)
    @arr = x
  end 

  def self.to(num)
    SumOfMultiples.new(3,5).to(num)
  end

  def to(num)
    @arr.each_with_object([]) do |el, obj|
      count = 1
      until el*count >= num 
        obj << el*count
        count += 1 
      end 
    end.uniq.sum
  end
end 
