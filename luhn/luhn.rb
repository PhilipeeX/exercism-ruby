=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
# Luhn.valid?
# require 'pry-byebug'
class Luhn
  def self.valid?(string)
    # binding.pry
    if string.match?(/[^0-9\s]/)
      return nil
    else
      numero_limpo = string.gsub(/[^0-9]/, '').split('')
      if numero_limpo.size <= 1
        return nil
      end
      i = -2
      while i >= -(numero_limpo.size)
        # binding.pry
        if numero_limpo[i].to_i * 2 > 9
          numero_limpo[i] = (numero_limpo[i].to_i * 2 - 9).to_s
        else
          numero_limpo[i] = (numero_limpo[i].to_i * 2).to_s
        end
        i -= 2
      end
      # binding.pry
      soma_final = numero_limpo.map {|valor| valor = valor.to_i}.reduce(0) { |resultado, numero| resultado + numero }
      
        if soma_final % 10 == 0
          return 'valid!'
        else
          return nil
        end
    end
  end
end