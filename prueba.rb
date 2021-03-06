# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
     string.reverse.swapcase.gsub(/[aeio]/,"*")
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(sentence)
    sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
end

def words_longer_than(array,num)
  words = []
  # count_of_array = array.split.length
  # if count_of_array > num
  #   word << count_of_array 
  # end
  # word
  array.each do |word|
    if word.length > num
      words << word
    end
  end
  words
end

def letter_per_word(array,letter)
  counts = []
  array.each do |words|
    counts << words.count("#{letter}")
  end
  counts
  # array.split.map do |words| 
  #   words.count("#{letter}")
  # end  
end

def numbers_larger_than(num_array)
  num_array.max
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"
puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
sentence = "entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía" 
puts max_letter_frequency_per_word(sentence) #== 5
p words = words_longer_than(sentence.split, 3) #== 5
p letters = letter_per_word(words,"e") 
p numbers_larger_than(letters) 
