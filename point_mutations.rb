class DNA
  def initialize(sequence)
    @sequence = sequence.chars
  end 

  def hamming_distance(compare) 
    zip = @sequence.zip(compare.chars).select {|x| !x.include? nil}
    zip.select{|arr| arr.uniq.count == 2}.count  
  end 
end 

# def test_ignores_extra_length_on_original_strand_when_longer
#   #skip
#   strand = 'GACTACGGACAGGGTAGGGAAT'
#   distance = 'GACATCGCACACC'
#   assert_equal 5, DNA.new(strand).hamming_distance(distance)
# end

# def test_does_not_actually_shorten_original_strand
#   #skip
#   dna = DNA.new('AGACAACAGCCAGCCGCCGGATT')
#   assert_equal 1, dna.hamming_distance('AGGCAA')
#   assert_equal 4, dna.hamming_distance('AGACATCTTTCAGCCGCCGGATTAGGCAA')
#   assert_equal 1, dna.hamming_distance('AGG')
# end