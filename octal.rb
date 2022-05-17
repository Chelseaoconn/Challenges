class Octal 
  def initialize(num)
    @num = num.to_i.digits
    @num = [0] if @num.any?{|el| el > 7} || num.chars.any?{|el| el.to_i.to_s != el}
  end 

  def to_decimal 
    @num.map.with_index do |num, ind| 
      num * 8**ind 
    end.sum
  end 
end 

