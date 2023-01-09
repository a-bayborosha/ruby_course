$stdout.sync = true

# men = ["John", "Paul", "George", "Ringo"]
# women = ["Eva", "Michele", "Sara", "Judith"]
# alltugether = []
# alltugether = men + women
# puts alltugether.to_s
################################################################################
# Объявите в программе массив с числами от 1 до 5 по порядку.
# Выведите на экран сперва этот массив, а затем числа из этого
# массива в обратном порядке от 5 до 1–го, не изменяя сам исходный массив.
# затем снова выведите исходный массив, измените его, так чтобы теперь его
# элементы встали задом наперед (от 5 до 1–го) и выведите его на экран снова.
# arr = ["1,2,3,4,5"]
# puts arr.to_s
# puts arr.reverse.to_s
# puts arr.to_s
# puts arr.reverse!.to_s
# puts arr.to_s
################################################################################
# Объявите в программе массив из марок автомобилей (всего около 10). Выведите на
# экран размер этого массива (но не сам массив) и спросите у пользователя одно
#  число — номер марки автомобиля, который он хочет получить в подарок.
# Выведите ему ту марку автомобиля, номер которой запросил пользователь.
# А если он запросил номер, которого нет (отрицательное число, ноль или больше,
# чем есть в массиве) — сообщите ему, что он ошибся.
################################################################################
# autos = %w("VW", "Volvo", "Mercedes", "Opel", "Mazda", "Audi", "Ford", "Fiat", "Skoda", "Seat" )
# puts autos.size
# puts "Enter index of your auto"
# answer = gets.to_i
# if answer <= 0 || answer > autos.size
#   puts "You made mistake"
# else
#   puts autos[answer-1]
# end
################################################################################
# Напишите игру "камень - ножницы - бумага". Пользователь вводит свой вариант в
# консоли и играет против компьютера. И видит результат игры. Компьютер должен
# выбирать случайный вариант.
arr = %w("Rock", "Paper", "Scissors")
puts "enter you variant:\n1 - Rock,\n2 - Paper,\n3 - Scissors"
player = gets.to_i
comp = rand(arr.size)
puts comp
puts "You chose #{arr[player-1]}"
puts "Computer chose #{arr[comp]}"

 if player == comp + 1
   puts "Draw"
 elsif player == 2 && comp == 1-1
   puts "Player wins"
 elsif player == 3 && comp == 2-1
   puts "Player wins"
 elsif player == 1 && comp == 3-1
   puts "Player wins"
 else
   puts "Computers wins"
 end
