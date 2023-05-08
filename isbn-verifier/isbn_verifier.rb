=begin
Write your code for the 'ISBN Verifier' exercise in this file. Make the tests in
`isbn_verifier_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isbn-verifier` directory.
=end

module IsbnVerifier
  def self.valid?(valor)
    valor = valor.gsub(/[^0-9a-zA-Z]/, '').split('')
    if valor.size != 10
      return false
    end
    if valor.take(valor.size - 1).map { |e| e.to_i.to_s == e }.all?
      if valor.last.to_i.to_s == valor.last || valor.last == 'X'
        array_isbn = []
        valor.each_with_index do |string, indice|
          if indice == valor.size - 1 && string == 'X'
            array_isbn[indice] = 10
          else
            array_isbn[indice] = string.to_i
          end
        end
        formula = (array_isbn[0] * 10) + (array_isbn[1] * 9) + (array_isbn[2] * 8) + (array_isbn[3] * 7) + (array_isbn[4]) * 6 + (array_isbn[5]) * 5 + (array_isbn[6]) * 4 + (array_isbn[7] * 3) + (array_isbn[8] * 2) + (array_isbn[9] * 1)
        formula % 11 == 0 ? true : false
      else
        false
      end
    else
      false
    end
  end
end
