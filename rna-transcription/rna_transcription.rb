require 'pry-byebug'
=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
    def self.of_dna(dna)
        # binding.pry
        dna_split = dna.split('')
        dna_split.each_with_index do |nucleotideo, indice|
            if nucleotideo == 'G'
                dna_split[indice] = 'C'
            elsif nucleotideo == 'C'
                dna_split[indice] = 'G'
            elsif nucleotideo == 'T'
                dna_split[indice] = 'A'
            elsif nucleotideo == 'A'
                dna_split[indice] = 'U'
            end
        end
        dna_split.join('')
    end
end
