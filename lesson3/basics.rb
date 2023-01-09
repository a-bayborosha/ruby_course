# ##the biggest number
# num1 = 172.169
# num2 = 172.169
#
# if num1 > num2
#   p num1
#   else if num1 < num2
#     p num2
#     else
#       p "The numbers are equal"
#   end
# end


# #arithmetical mean
# num1 = 2308
# num2 = 13
#
#  puts mean  = "The arithmetical mean of the number #{num1} and #{num2} is: #{(2308+13)/2}"



# # Создать переменную — большое число. Проверить является ли оно четным и вывести результат на экран.
#  num = Random.rand(1..1000)
#  puts num % 2 == 0 ? "#{num} is even number" : "#{num} is odd number"


#  #Напишите программу, которая подсказывает, выходной сегодня или нет
#  #(для простоты мы не учитываем государственных праздников, итак много дней для безделья):
# case Time.now.strftime('%A')
#  when "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"
#    puts "Сегодня будний день, за работу!"
#  else
#    puts "Сегодня выходной!"
#  end


# # # Напишите программу «Монетка»: она генерирует случайное число 0 или 1.
# # # И выводит на экран «Выпал орел» для нуля или «Выпала решка» для единицы.
# # puts Random.rand(0...2).to_i == 0 ? "Выпал орел" : "Выпала решка"
#
# # Модифицируйте программу из предыдущей задачи так, чтобы иногда выпадало еще и "ребро"
# #  («Монета встала на ребро»). Причем ребро должно выпадать намного реже,
# #   чем орел или решка (вероятность 1/10 или меньше).
# #var1
# chance = Random.rand(0...11)
# case chance
# when 0,1,2,3,4,5,6,7,8,9
# result = Random.rand(0...2)
#   if result == 0
#     puts "Выпал орел #{result}"
#    else
#     puts "Выпала решка #{result}"
#   end
# when 10
#   puts "Выпало ребро"
# end
#
# #var2
# if rand(11) == 10
#   puts "Выпало ребро"
# else
#   if rand(2) == 1
#     puts 'Выпала решка'
#   else
#     puts 'Выпал орел'
#   end
# end
