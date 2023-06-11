# frozen_string_literal: true

# Creación de la clase principal
class Vigenere
  def initialize(message, key)
    @message = message.upcase.split('')
    @key = key.split('')
  end

  # Arroja el resultado en número
  def vigenere_number(word)
    uppercase_alphabetic = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z] # Sin ñ para probar
    result = Array.new(0)

    word.each do |letter|
      result.push(uppercase_alphabetic.index(letter)) if uppercase_alphabetic.include?(letter)
    end
    result
  end

  def encryption
    secret_word = generate_key(@message)
    
    
  end

  def generate_key(word_key)
    i = 0
    secret_key = Array.new(0)
    word_key.each do |position|
      if(i > (@key.length - 1))
        i = 0
      end
      secret_key.push(@key[i])
      i += 1
    end
    secret_key
  end
end

mi_vegenere = Vigenere.new('COMPutadora', 'HOLA')
mi_vegenere.encryption

mi_vegenere2 = Vigenere.new('HOLA', 'SECRETO')
mi_vegenere2.encryption