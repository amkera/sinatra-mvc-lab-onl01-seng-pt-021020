class PigLatinizer
  attr_accessor :piglatinized_phrase

  def piglatinize(word) #pig latinizes a single word
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front_end = word.slice!(0..vowel_index-1)
      word + front_end +"ay"
    end
  end

  def to_pig_latin(phrase)
    word_array = phrase.split(" ")
    @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
  end
end

def piglatinize(text_input)
    split_input = text_input.split(" ")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    split_input.map! do |word|
      if vowels.include?(word[0])
        word = word + "way"
      else
        vowel_index = word.index(/[aeiou]/)
        front_part = word.slice!(0..vowel_index-1)
        word + front_part + "ay"
      end
    end
    split_input.join(" ")
  end
end