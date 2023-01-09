
class Filmoteka
  def initialize()
    @film_base = []
  end

  attr_accessor :film_base



  def your_fav_director
    puts "Фильмы какого режиссера Вы хотите посмотреть?"
  end

  def your_fav_film
      puts "Какой-нибудь его хороший фильм?"
  end

  def output(director, film)
    if film.length > 1
      film = film.sample
    end
    puts "И сегодня вечером рекомендую посмотреть: #{film}\nРежиссера: #{director}"

  end

end
