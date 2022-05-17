class Anagram
  def initialize(word) 
    list = word.downcase.chars.permutation.map{|x| x.join}
    list.delete(word)
    @perm = list
  end 

  def match(list)
    ans = list.select {|x| @perm.include? x.downcase}
  end 
end 
