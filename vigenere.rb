# frozen_string_literal: true

# Creación de la clase principal
class Vigenere
  def initialize (message, key)
    @message = message.split('')
    @key = key.split('')
  end

    # Creación para el diagrama
  def vigenere_diagram
    uppercase_alphabetic = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","Ñ","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    puts @message.inspect
  end
end
mi_vegenere = Vigenere.new("hola","Mi Papa")
mi_vegenere.vigenere_diagram