=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Darts
  def initialize(valor_x, valor_y)
    @valor_x = valor_x
    @valor_y = valor_y
  end

  def score
    alvo = Math.sqrt((0 - @valor_x)**2 + (0 - @valor_y)**2)

    if alvo > 10
      0
    elsif alvo > 5 && alvo <= 10
      1
    elsif alvo > 1 && alvo <= 5
      5
    elsif alvo <= 1
      10
    else
      "Erro inesperado"
    end
  end
end
