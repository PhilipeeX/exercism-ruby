=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
    # require 'pry-byebug'; binding.pry
    
    def self.convert(valor)
        @raindrops_string = []
        # require 'pry-byebug'; binding.pry
        if valor % 3 != 0 && valor % 5 != 0 && valor % 7 != 0
            return valor.to_s
        elsif valor % 3 == 0
            @raindrops_string << 'Pling'
        end
        if valor % 5 == 0
            @raindrops_string << 'Plang'
        end
        if valor % 7 == 0
            @raindrops_string << 'Plong'
        end
    @raindrops_string.join('')
    end
end