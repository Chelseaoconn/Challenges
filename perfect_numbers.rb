class PerfectNumber 
  def self.classify(num)
    raise StandardError if num < 0 
    ans = (1...num).select {|n| num % n == 0}.sum 
    return 'perfect' if ans == num 
    ans > num ? 'abundant' : 'deficient'
  end 
end 

