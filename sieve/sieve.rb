=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end

class Sieve
  def initialize(valor)
    @valor = valor
  end

  def primes
    valores = {}
    (2..@valor).each do |valor|
      valores[valor] = 0
    end

    
  end
end
