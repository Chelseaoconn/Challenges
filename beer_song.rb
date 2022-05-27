class BeerSong 
    def self.lyrics 
      verses(99, 0)
    end 
   
    def self.verses(what, to_what)
       arr = (to_what..what).to_a.reverse 
       arr.map do |num|
        verse(num)
       end.join("\n")
    end 

    def self.verse(single)
      return no_more if single == 0 
      return one if single == 1
      single == 2 ? two : line(single)
    end 

    def self.line(num)
      "#{num} bottles of beer on the wall, #{num} bottle of beer.\n" \
      "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
    end 

    def self.two 
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    end 

    def self.one 
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    end

    def self.no_more
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end 
end 