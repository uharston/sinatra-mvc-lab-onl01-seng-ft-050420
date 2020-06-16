

class PigLatinizer

    # def initialize(string)
    #     @string = string 
    # end 


    
    def piglatinize(thing)
      alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
      vowels = %w[a e i o u] + %w[A E I O U]
      consonants = alphabet - vowels
    
      result = []
        input = thing.split(' ') 
          input.each do |word|
              if word.length < 2
                 result << word + "way" 
              elsif vowels.include?(word[0])
                 result <<  word + "way"
              elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                 result <<  word[3..-1] + word[0..2] + "ay"
              elsif consonants.include?(word[0]) && consonants.include?(word[1])
                 result <<  word[2..-1] + word[0..1] + "ay"
              elsif consonants.include?(word[0])
                 result <<  word[1..-1] + word[0] + "ay"
              else 
                 result <<  word + '?'
              end
          end 
      result.join(', ').gsub(/,/, '')
    end
    
    end 