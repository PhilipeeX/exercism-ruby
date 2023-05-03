
module Pangram

  @@alfabeto = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  def self.pangram?(frase)
    array_da_frase = frase.upcase.gsub(/[^\w]/, '').gsub(/\d/, '').split('')
    @@alfabeto.all? { |letra| array_da_frase.include?(letra)}
  end
end
