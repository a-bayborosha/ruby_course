class Game
  def initialize(word)
    @word = get_letters(word)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end
##############################################################################
  def get_letters(word)
    if word == nil || word ==""
    abort "You have not enter the word"
  end
  return word.split("")

  end
###############################################################################
 #1. ask letter from console
 #2. check result
  def ask_next_letter
    puts "\n Enter the next letter"
    letter =""
      while letter == "" || letter.length > 1 do
      letter = STDIN.gets.chomp
      end
    next_step(letter)
  end
  #############################################################################
  # Метод, возвращающий статус игры (геттер для @status)
  #
  #  0 – игра активна
  # -1 – игра закончена поражением
  #  1 – игра закончена победой
  def status
    return @status
  end
  #############################################################################
  # method next_step checks letter's existance in guessed word
  # or in the existende words in @good_letters ans @bad_letters
  def next_step(letter)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(letter) || @bad_letters.include?(letter)
      return
    end

    if @word.include?(letter) ||
      (letter == "е" && @word.include?("ё")) ||
      (letter == "ё" && @word.include?("е"))
      @good_letters << letter
        if letter == "ё"
          @good_letters << "е"
        end
        if letter == "е"
          @good_letters << "ё"
        end
        if (@word - @good_letters).empty?
          @status = 1
        else
          @status = 0
        end
    #иначе введёный символ заносится в массив "неправильных" букв
    else
      @bad_letters << letter
      @errors+=1
    if @errors >= 7
      @status = -1
    end
  end
  end
###############################################################################
###############################################################################
  def word
    return @word
  end
  def good_letters
    return @good_letters
  end
  def bad_letters
    return @bad_letters
  end
  def errors
    @errors
  end
  ##-------------------------------------------------------------------
end
