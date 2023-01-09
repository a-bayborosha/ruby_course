##get word from input array and make it letters array
def get_letters
  word = ARGV[0].split('')
  if word == nil || word ==""
    abort "You have not enter the word"
  end
  return word
end
###############################
##clear the screen
def cls
  system "clear" or system "cls"
end
####################################
##declination
def declination(amount, oshibka, oshibki, oshibok)
  if amount == 1
    return "#{amount} #{oshibka}"
  elsif amount >= 2 && amount <=4
    return "#{amount} #{oshibki}"
  else
    return "#{amount} #{oshibok}"
  end
end
#####################################
# returns the symbol that user has entered
def get_user_input
  letter = ""
  while letter == "" || letter.length > 1 do
    letter = STDIN.gets.chomp
  end
  return letter
end
#########################################################
#checks
def check_result(user_input, letters, good_letters, bad_letters)
  #если введёный символ уже вводился
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end
  #если символ есть в загаданном слове, то он добавляется в массив с угаданными буквами
  if letters.include?(user_input) ||
    (user_input == "и" && letters.include?("й")) ||
    (user_input == "й" && letters.include?("и")) ||
    (user_input == "е" && letters.include?("ё")) ||
    (user_input == "ё" && letters.include?("е"))
    good_letters << user_input
    if user_input == "ё"
      good_letters << "е"
    end
    if user_input == "е"
      good_letters << "ё"
    end
    if user_input == "й"
      good_letters << "и"
    end
    if user_input == "и"
      good_letters << "й"
    end
    # Так как мы поменяли логику и массив good_letters может содержать не только
       # буквы, которые есть в слове, но и их «подружек», сравнение массивов даст
       # теперь неверный результат.
       #
       # Для правильной проверки мы используем возможность руби «вычесть» один из
       # массивов из другого. Эта операция возвращает только те элементы первого
       # массива, которых нет во втором.
       #
       # https://ruby-doc.org/core-2.4.0/Array.html#method-i-2D
       #
       # Если мы из всех букв загаданного слова уберем все «хорошие» буквы, то
       # останется массив, содержащий буквы, которые еще не отгаданы. Если этот
       # массив пуст, значит мы угадали все слово. Бинго!
       #
       # Проверить массив на «пустоту» (что в нем нет элементов), можно с помощью
       # метода .empty?
       #
       # https://ruby-doc.org/core-2.4.0/Array.html#method-i-empty-3F
    if (letters - good_letters).empty?
      return 1
    else
      return 0
    end
    #иначе введёный символ заносится в массив "неправильных" букв
  else
    bad_letters << user_input
    return -1
  end
end
################################################################################
##метод проходится по загаданному слову и заменяет угаданное на "букву", а не
# угаданное на подчёакивание
def get_word_for_print(letters, good_letters)
  result = ""
  for letter in letters do
    if good_letters.include?(letter)
      result+=letter + " "
    else
      result+="__ "
    end
  end
  return result.upcase
end
#############################################################################
#выводит загаданное слово
def print_status(letters, good_letters, bad_letters, errors)
puts "\n Word: #{get_word_for_print(letters, good_letters)}"
##выводим информацию об ошибках
puts "\n The errors amount is #{errors}: #{bad_letters.join(", ").upcase}"
if errors >= 7
  puts " You Lose The Game"
else
  if (letters - good_letters).empty?
    puts " You Won The Game\n\n"
  else
    puts " You guessed another letter!\nУ вас осталось #{declination((7-errors), "попытка", "попытки", "попыток")}"
    puts good_letters.join(", ")
  end
end


end
