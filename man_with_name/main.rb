require_relative "./man"
puts "У нас есть два человека:"

man1 = Human.new("Гаврила", "Петрович", 41)
puts man1.name_surname
puts "И ему #{man1.output}"

man2 = Human.new("Фёдор", "Петрович", 68)
puts man2.name_surname
puts "И ему #{man2.output}"
