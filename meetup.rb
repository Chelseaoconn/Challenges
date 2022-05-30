require 'date'

class Meetup 
  DAYS = {'first' => [0], 'second' => [1], 'third' => [2], 'fourth' => [3], 'fifth' => [4], 'teenth' => (13..19).to_a, 'last' => [-1]}
  DAYS_IN_MONTH = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  def initialize(year, month)
    @year = year 
    @month = month
  end 

  def day(day, place)
    cal = make_list 
    list = find_days(cal, day) 
    try = DAYS[place.downcase]
    return nil if try[0] > list.length - 1 && try.length <= 1
    return Date.civil(@year, @month, list[try[0]][0]) if try.length == 1 
    teenth = list.select {|el| try.include? el[0]}
    Date.civil(@year, @month, teenth[0][0]) 
  end 

  private 

  def make_list
    first = Date.civil(@year, @month, 1).strftime("%A").downcase
    hash = {1 => first}
    x = DAYS_IN_MONTH[@month-1]
    x += 1 if @month ==2 && Date.leap?(@year)
    (2..x).map.with_index do |num,ind|
      hash[num] = Date.civil(@year, @month, 1).next_day(num-1).strftime("%A").downcase
    end 
    hash
  end

  def find_days(cal, day)
    cal.select do |num, el|
      el == day.downcase
    end.to_a
  end 

end 




