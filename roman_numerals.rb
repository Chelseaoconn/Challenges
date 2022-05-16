class RomanNumeral
  HUNDREDS = ['', "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"] 
  TENS = ['', 'X','XX','XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'] 
  ONES = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X']

  def initialize(num)
    arr = [0,0,0,0]
    num.digits.reverse.each do |el|
      arr << el 
      arr.shift 
    end 
    @arr = arr 
    @roman = []
  end 

  def to_roman 
    @arr.each_with_index do |num, ind|
      @roman << 'M' * num if ind == 0 
      case ind 
      when 1 
        @roman << HUNDREDS[num]
      when 2 
        @roman << TENS[num]
      when 3 
        @roman << ONES[num] 
      end
    end 
    @roman.join 
  end 
end 

new = RomanNumeral.new(3785)
new.to_roman 
