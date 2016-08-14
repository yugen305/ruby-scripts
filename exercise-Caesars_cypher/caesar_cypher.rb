def caesar_cipher(input, shift = -3)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  input.chars.map { |c| encrypter.fetch(c, " ") }
end

p caesar_cipher("My real name is Donald Duck").join
