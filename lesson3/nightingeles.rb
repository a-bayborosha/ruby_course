$stdout.sync = true
temperature = ARGV[0]
season = ARGV[1]

if temperature == nil
  puts "Какая сейчас температура?"
  temperature = STDIN.gets.chomp.to_i
else
  temperature = temperature.to_i
end
if season == nil
  puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
  season = STDIN.gets.chomp.to_i
else
  season = season.to_i
end
 if  season == 1
  if  temperature >= 15 && temperature <= 35
    abort "Скорее идите в парк, соловьи поют!"
  else
    abort "Увы, даже летом для соловьев сейчас неподходящие условия"
  end
end
  if temperature >= 22 && temperature <= 30
      abort "Скорее идите в парк, соловьи поют!"
    else
      abort "Сейчас соловьи молчат, греются или прохлаждаются :)"
  end
