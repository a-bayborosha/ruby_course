require "./game.rb"


class ResultPrinter

  def print_status(game)
  cls
  puts "\n Word: #{get_word_for_print(game.word, game.good_letters)}"
    ##выводим информацию об ошибках
  puts "\n The errors amount is #{game.errors}: #{game.bad_letters.join(", ").upcase}"
    if game.errors >= 7
      puts " You Lose The Game"
      print_gallows(7)
    else
      if (game.word - game.good_letters).empty?
        puts " You Won The Game\n\n"
      else

        puts " \nУ вас осталось #{declination((7-game.errors), "попытка", "попытки", "попыток")}"
        print_gallows(game.errors)
        puts game.good_letters.join(", ")
      end
    end
  end
###############################################################
def declination(amount, oshibka, oshibki, oshibok)
  if amount == 1
    return "#{amount} #{oshibka}"
  elsif amount >= 2 && amount <=4
    return "#{amount} #{oshibki}"
  else
    return "#{amount} #{oshibok}"
  end
end
###############################################################
  def get_word_for_print(word, good_letters)
    result = ""
    for letter in word do
      if good_letters.include?(letter)
        result+=letter + " "
      else
        result+="__ "
      end
    end
    return result.upcase
  end
  ###############################
  ##clear the screen
  def cls
    system "clear" or system "cls"
  end
  ##################################
  def print_gallows(errors)
    case errors
    when 0
      puts"
               _______
               |/
               |
               |
               |
               |
               |
               |
               |
             __|________
             |         |
             "
    when 1
      puts"
                _______
                |/
                |     ( )
                |
                |
                |
                |
                |
                |
              __|________
              |         |
      "
    when 2
      puts"
              _______
               |/
               |     ( )
               |      |
               |
               |
               |
               |
               |
             __|________
             |         |
      "
    when 3
      puts"
                _______
                |/
                |     ( )
                |      |_
                |        \\
                |
                |
                |
                |
              __|________
              |         |
      "
    when 4
      puts"
                _______
                |/
                |     ( )
                |     _|_
                |    /   \\
                |
                |
                |
                |
              __|________
              |         |
      "
    when 5
      puts"
                _______
                |/
                |     ( )
                |     _|_
                |    / | \\
                |      |
                |
                |
                |
              __|________
              |         |
      "
    when 6
      puts"
                _______
                |/
                |     ( )
                |     _|_
                |    / | \\
                |      |
                |     / \\
                |    /   \\
                |
              __|________
              |         |
      "
    when 7
      puts"
                _______
                |/     |
                |     (_)
                |     _|_
                |    / | \\
                |      |
                |     / \\
                |    /   \\
                |
              __|________
              |         |
      "
  end
  #---------------------------------------------
  end
end
