=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

#Module quue define a resistência em oms a partir das cores de um determinado resistor
module ResistorColorDuo
  def self.value(array)
    valores_padronizados = [
      ['black', 0],
      ['brown', 1],
      ['red', 2],
      ['orange', 3],
      ['yellow', 4],
      ['green', 5],
      ['blue', 6],
      ['violet', 7],
      ['grey', 8],
      ['white', 9]
    ]
    # require 'pry-byebug'; binding.pry
    resistencia = []
    valores_padronizados.each do |cor, valor|
      if cor == array[0]
        resistencia << valor.to_s
      elsif cor == array[1]
        resistencia << valor.to_s
      end
    end
    resistencia.join.to_i
  end
end
