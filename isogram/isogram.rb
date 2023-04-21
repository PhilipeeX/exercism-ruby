require 'pry-byebug'
=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
    def self.isogram?(string)
        isograma = string.downcase.gsub(/[- ]/, '').split('')
        # binding.pry
        isograma.each do |letra| 
            if isograma.count(letra) > 1
                return false
            end
        end
        return true
    end
end