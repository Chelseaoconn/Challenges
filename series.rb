class Series
  def initialize(num)
    @num= num.chars.map(&:to_i)
  end 

  def slices(l)
    raise ArgumentError if l > @num.length
    @num.each_cons(l).to_a
  end 
end 

