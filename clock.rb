class Clock 
  attr_accessor :time
  
  def initialize(time)
    @hour, @min = time/60, time%60
    @time = time
  end

  def self.at(hour, minute = 0)
    times = hour * 60 + minute 
    new(times)
  end 
  
  def to_s 
    "#{format('%02d',@hour)}:#{format('%02d',@min)}"
  end 

  def ==(other)
    time == other.time
  end 

  def -(other)
    self.time -= other
    until time > 0 
      self.time += 1440
    end
    Clock.new(time)
  end
  
  def +(other)
    self.time += other
    until time < 1440 
      self.time -= 1440
    end  
    Clock.new(time)
  end
end 


