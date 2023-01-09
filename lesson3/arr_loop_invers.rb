$stdout.sync = true

arr1 = [1,2,3,4,5,6,7]
arr2 = []

for i in arr1 do
  arr2.unshift(i)
end

p arr2


# if args[0].to_i >= 22 && args[0].to_i <= 30
#     puts "Скорее идите в парк, соловьи поют!"
#   elsif (args[1].to_i != 1) && (args[0].to_i < 15 && args[0].to_i > 35)
#   puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
# end

# puts "Какая сейчас температура?"
# temperature = STDIN.gets.chomp.downcase.to_i
# puts temperature.to_i >= 22 && temperature.to_i <= 30 ?  "Скорее идите в парк, соловьи поют!#{break}" : "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
#
# season = STDIN.gets.chomp.downcase.to_i
# is_singing(temperature, season)
