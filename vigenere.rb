# frozen_string_literal: true

# Creación de la clase principal
class Vigenere
  def initialize(message, key)
    @message = message.upcase.split('')
    @key = key.split('')
  end

  # Arroja el resultado en número
  def vigenere_number(word)
    uppercase_alphabetic = %w[A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z]
    result = Array.new(0)

    word.each do |letter|
      result.push(uppercase_alphabetic.index(letter)) if uppercase_alphabetic.include?(letter)
    end
    result
  end

  def vigenere_enc_word(num_arr)
    uppercase_alphabetic = %w[A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z]
    result = Array.new(0)

    num_arr.each do |element|
      result.push(uppercase_alphabetic[element])
    end

    puts result.inspect
  end

  def encryption
    secret_word = generate_key(@message)
    number_secret = vigenere_number(secret_word)
    number_message = vigenere_number(@message)   

    
    sum = number_secret.zip(number_message).map {|a,b| a + b}
    
    number_encryption = sum.map do |element|
      if (element > 26)
        element - 27
      else
        element
      end
    end

    puts number_encryption.inspect
    vigenere_enc_word(number_encryption)
    puts
    puts secret_word.inspect  
    puts @message.inspect
    puts
    puts number_secret.inspect
    puts number_message.inspect
    
    
  

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

mi_vegenere = Vigenere.new('ZAPATO', 'ZONA')
mi_vegenere.encryption

mi_vegenere2 = Vigenere.new('ZOLA', 'ZECRETO')
#mi_vegenere2.encryption