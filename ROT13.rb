require "pry"

def rot13(secret_messages)

  shift = -13

  secret_messages.map! do |message|

    word = message.each_char.map do |character|
      cypher(character, shift)
    end

    word.join

  end

end

def cypher character, shift

  letters = ("a".."z").to_a
  capitals = ("A".."Z").to_a
  index = 0
  result = ""

  if character.ord >= "a".ord && character.ord <= "z".ord
    index = letters.index(character)
    result = letters[index + shift]
  elsif character.ord >= "A".ord && character.ord <= "Z".ord
    index = capitals.index(character)
    result = capitals[index + shift]
  else
    result = character
  end
  
  result
end

message = ["Why did the chicken cross the road?", "Gb trg gb gur bgure fvqr!"]
p rot13(message)
