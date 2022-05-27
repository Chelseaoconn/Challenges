class Diamond 
  def self.make_diamond(letter)
    ar = ('A'..letter).to_a
    l = ar.length 
    first = ar.map.with_index do |el,ind|
      outer = space(l-(ind+1))
      y = el == 'A' ? '' : el
      outer + el + space((ind*2)-1) + y + outer + "\n"
    end 
    (first + first[0..-2].reverse).join
  end
  
  class << self 
    private 

  def space(num)
    num > 0 ? ' ' * num : ''
  end 
  end
end 

puts Diamond.make_diamond('Z')