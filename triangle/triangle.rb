=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

#classe que cria um triangulo a partir de um array passado como parametro com os lados do triangulo.
class Triangle
  def initialize(lados)
    @lado_a = lados[0].to_f
    @lado_b = lados[1].to_f
    @lado_c = lados[2].to_f
  end

  def triangulo_valido?
    if @lado_a > 0 && @lado_b > 0 && @lado_c > 0
      if @lado_a + @lado_b >= @lado_c && @lado_b + @lado_c >= @lado_a && @lado_a + @lado_c >= @lado_b
        true
      else
        false
      end
    else
      false
    end
  end

  def equilateral?
    if self.triangulo_valido?
      @lado_a == @lado_b && @lado_b == @lado_c ? true : false
    else
      false
    end
  end

  def isosceles?
    if self.triangulo_valido?
      @lado_a == @lado_b || @lado_b == @lado_c || @lado_c == @lado_a ? true : false
    else
      false
    end
  end

  def scalene?
    if self.triangulo_valido?
      @lado_a != @lado_b && @lado_b != @lado_c && @lado_c != @lado_a ? true : false
    else
      false
    end
  end
end
