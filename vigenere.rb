# frozen_string_literal: true

# Some documentation for Person
class Vigenere
  def initialize(message, key)
    @message = message.upcase.split('')
    @key = key.split('')
  end

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

  def generate_key(word_key)
    i = 0
    secret_key = Array.new(0)
    word_key.each do
      i = 0 if i > (@key.length - 1)
      secret_key.push(@key[i])
      i += 1
    end
    secret_key
  end
end
