require "./film"
require "./filmoteka"
$stdout.sync = true

session = Filmoteka.new


while session.film_base.size < 3
  puts session.your_fav_director
  film = Film.new(gets.chop)

  for i in 0..2
    puts session.your_fav_film
    antwort = STDIN.gets.chomp
    film.film_name << antwort
  end
  session.film_base << film
end
film_choise = session.film_base.sample
session.output(film_choise.director, film_choise.film_name)
