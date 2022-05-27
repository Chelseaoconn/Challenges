class Robot 
  ALPH = ('A'..'Z').to_a 
  NUM = (0..9).to_a 
  @@names = []

  def initialize 
    @name = '00000'
  end

  def name 
    return @name if @name != '00000'
    loop do 
      @name = @name.chars.map.with_index do |el,ind|
        ind == 0 || ind == 1 ? ALPH.sample : NUM.sample 
      end.join
      break if check(@name)
    end 
    @name
  end 

  def reset 
    @name = '00000'
  end

  private 

  def check(name)
    return false if @@names.include? name 
    @@names << name
    true
  end
end 
