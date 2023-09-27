def cifra_de_cesar(texto, deslocamento)
    cifrado = ""
  
    texto.each_char do |char|
      if char.match(/[a-zA-Z]/)
        base = char.downcase == char ? 'a' : 'A'
        cifrado_char = ((char.ord - base.ord + deslocamento) % 26 + base.ord).chr
        cifrado << cifrado_char
      else
        cifrado << char
      end
    end
  
    return cifrado
  end
  
  puts "Digite a mensagem que deseja criptografar:"
  mensagem = gets.chomp
  
  puts "Digite o número de deslocamento:"
  deslocamento = gets.to_i
  
  mensagem_cifrada = cifra_de_cesar(mensagem, deslocamento)
  
  puts "Mensagem original: #{mensagem}"
  puts "Mensagem cifrada: #{mensagem_cifrada}"