# frozen_string_literal: true

# Creación de la clase principal
class Vigenere
  def initialize(message, key)
    @message = message.upcase.split('')
    @key = key.split('')
  end

  # Arroja el resultado en número
  def vigenere_diagram(word)
    uppercase_alphabetic = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z] # Sin ñ para probar
    result = Array.new(0)

    word.each do |letter|
      result.push(uppercase_alphabetic.index(letter)) if uppercase_alphabetic.include?(letter)
    end
    result
  end

  def encryption
    if @key.length > @message.length
      puts 'La palabra clave debe ser menor o igual al mensaje'
      return
    end
    
    a = @message.length % @key.length

    puts a

  end
end

mi_vegenere = Vigenere.new('Misb2', 'pru')
mi_vegenere.encryption