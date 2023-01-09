require_relative "film.rb"
require_relative "person.rb"


person1 = Person.new("John", "Smith", 26)
person2 = Person.new("Jimm", "Dots", 46)
person3 = Person.new("Harret", "Le", 29)


person1.fav_film = Film.new('Челюсти', 'Спилберг')
person2.fav_film = Film.new('Список Шиндлера', 'Спилберг')
person3.fav_film = Film.new('Парк Юрского периода', 'Спилберг')

puts person1.first_name
puts "с любимым фильмом: #{person1.fav_film.film_name}"
