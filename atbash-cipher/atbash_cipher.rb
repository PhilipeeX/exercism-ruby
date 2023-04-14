=begin
Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
`atbash_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/atbash-cipher` directory.
=end

class Atbash
    NAO_CIFRADO =   %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    CIFRADO =       %w(z y x w v u t s r q p o n m l k j i h g f e d c b a)
    def self.encode(string)
        # require 'pry-byebug'; binding.pry
        string = string.downcase
        if string.match(/[,.\s]/)
            string.gsub!(/[,. ]/, '')
        end
        string.split('').each_with_index do |letra, indice|
            if NAO_CIFRADO.include?(letra)
                string[indice] = CIFRADO[NAO_CIFRADO.index(letra)]
            end
        end
        string = string.scan(/.{1,5}/).join(' ')
        string
    end

    def self.decode(string)
        if string.match(/[\s]/)
            string.gsub!(/[ ]/, '')
        end
        string.split('').each_with_index do |letra, indice|
            if CIFRADO.include?(letra)
                string[indice] = NAO_CIFRADO[CIFRADO.index(letra)]
            end
        end
        string
    end
end