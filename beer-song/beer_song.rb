=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end

module BeerSong
  def self.recite(bottles, times)
    frase = []
    times.times.with_index do |_, index|
      if bottles == 0
        frase << "No more bottles of beer on the wall, no more bottles of beer.\n"
        frase << "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      elsif bottles == 1
        frase << "#{bottles.to_s} bottle of beer on the wall, #{bottles.to_s} bottle of beer.\n"
        bottles -= 1
        frase << "Take it down and pass it around, no more bottles of beer on the wall.\n"
      else
        frase << "#{bottles.to_s} bottles of beer on the wall, #{bottles.to_s} bottles of beer.\n"
        bottles -= 1
        if bottles == 0 
          frase << "Take it down and pass it around, no more bottles of beer on the wall.\n"
        elsif bottles == 1
          frase << "Take one down and pass it around, #{bottles.to_s} bottle of beer on the wall.\n"
        else
          frase << "Take one down and pass it around, #{bottles.to_s} bottles of beer on the wall.\n"
        end
      end
      if !(index == times - 1)
        frase << "\n"
      end
    end
    return frase.join
  end
end
