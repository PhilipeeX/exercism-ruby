=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

#Module quue define a resistência em oms a partir das cores de um determinado resistor
module ResistorColorDuo
  VALORES_PADRONIZADOS = [
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
  def self.value(array)
    resistencia = []
    array.take(2).each do |cor_resistor|
      VALORES_PADRONIZADOS.each do |cor, valor|
        cor_resistor == cor ? resistencia << valor.to_s : nil
      end
    end
    resistencia.join.to_i
  end
end
