$stdout.sync = true
def hero_villain(hero)
  case hero
  when "таня гроттер", "tanja grotter"
    puts "Чума дель-торт"
  when "питер пэн", "piter penn"
    puts "капитан Крюк"
  when "ёжик соник", "sonnik"
    puts "доктор Эггман"
  when "черепашки-ниндзя", "turtles-ninja"
    puts "Шреддер"
  when "шерлок холмс", "sherlock holmes"
    puts "Пр. Морриарти"
  when "буратино", "pinokio"
    puts "Карабас"
  when "фродо", "frodo"
    puts "Саурон"
  when "маугли", "mowgli"
    puts "Шер-Хан"
  when "моцарт", "mozzart"
    puts "Сольери"
  when "бэтмен", "batman"
    puts "Джоккер"
  else
    puts "Не удалось найти врага"
  end
end

puts "Врага какого персонажа вы хотите узнать?"
answer = STDIN.gets.chomp
puts hero_villain(answer.downcase)
