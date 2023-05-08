=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

# Classe que instancia um valor para o quadrado e depois verifica o calculo do quadrado da soma ou a soma dos quadrados.
class Squares
  def initialize(valor)
    @valor = valor
  end

  def square_of_sum
    quadrado = @valor
    soma = 0
    while quadrado >= 1
      soma += quadrado
      quadrado -= 1
    end
    soma**2
  end

  def sum_of_squares
    quadrado = @valor
    soma = 0
    while quadrado >= 1
      soma += quadrado**2
      quadrado -= 1
    end
    soma
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
