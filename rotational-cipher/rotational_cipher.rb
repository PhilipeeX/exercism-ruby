=begin
Write your code for the 'Rotational Cipher' exercise in this file. Make the tests in
`rotational_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rotational-cipher` directory.
=end

# modulo que cifra uma frase/string a partir da quantidade passada como parametro
module RotationalCipher
  def self.rotate(string, quantidade)
    alfabeto = ('a'..'z').to_a
    string = string.split('').map do |caractere|
      if alfabeto.include?(caractere)
        indice = (alfabeto.index(caractere) + quantidade) % alfabeto.size
        alfabeto[indice]
      elsif alfabeto.include?(caractere.downcase)
        indice = (alfabeto.index(caractere.downcase) + quantidade) % alfabeto.size
        alfabeto[indice].upcase
      else
        caractere
      end
    end
    string.join
  end
end
