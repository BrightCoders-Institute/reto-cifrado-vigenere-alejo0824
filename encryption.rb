# frozen_string_literal: true

require_relative 'vigenere'

# Heredamos la clase Vigenre y está clase se usa para arroajar el resultado
class Encryption < Vigenere
  def initialize(*args)
    super
  end

  # Aplicación Polimorfismo
  def vigenere_enc_word(num_arr)
    uppercase_alphabetic = %w[A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z]
    result = Array.new(0)

    num_arr.each do |element|
      element -= 27 if element > 26
      result.push(uppercase_alphabetic[element])
    end

    puts "El mensaje encriptado es: #{result.join}"
  end

  def encryption_word
    secret_word = generate_key(@message)
    number_secret = vigenere_number(secret_word)
    number_message = vigenere_number(@message)
    sum = number_secret.zip(number_message).map { |a, b| a + b }
    vigenere_enc_word(sum)
  end
end

mi_vegenere = Encryption.new('ZAPATO', 'ZON')
mi_vegenere.encryption_word
