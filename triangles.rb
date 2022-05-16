class Triangle 
  def initialize(one, two, three) 
    @arr = [one, two, three].sort
    raise ArgumentError if @arr.any?{|x| x<=0} || @arr[0]+@arr[1]<=@arr[2] 
  end 

  def kind
    return "equilateral" if @arr.uniq.length == 1 
    @arr.uniq.length == 2 ? 'isosceles' : 'scalene'  
  end 
end 